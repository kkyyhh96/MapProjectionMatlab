function varargout = polyconKYH(varargin)
% 等差分纬线多圆锥投影
% 任意性质多圆锥投影
% 制作者：康雨豪
mproj.default = @polyconDefault;
mproj.forward = @polyconFwd;
mproj.inverse = @polyconInv;
mproj.auxiliaryLatitudeType = 'geodetic';
mproj.classCode = 'Cyln';

varargout = applyProjection(mproj, varargin{:});

%--------------------------------------------------------------------------

function mstruct = polyconDefault(mstruct)

[mstruct.trimlat, mstruct.trimlon] ...
    = fromDegrees(mstruct.angleunits, [-90 90], [-180 180]);
mstruct.mapparallels = 0;
mstruct.nparallels   = 1;
mstruct.fixedorient  = [];

%--------------------------------------------------------------------------

function [x, y] = polyconFwd(mstruct, mu, lambda)

[a, e, epsilon, radius] = deriveParameters(mstruct);

% Back off of the +/- 180 degree points.  The inverse
% algorithm has trouble distinguishing points at -180 degrees
% when they are near the pole.

indx = find( abs(pi - abs(lambda)) <= epsilon);
if ~isempty(indx)
    lambda(indx) = lambda(indx) - sign(lambda(indx))*epsilon;
end

% Convert back to geodetic latitude -- both types are needed

phi = convertlat([a e], mu, 'rectifying', 'geodetic', 'nocheck');

% Back off of the +/- 90 degree points.  This allows
% the differentiation of longitudes at the poles of the transformed
% coordinate system.

indx = find(abs(pi/2 - abs(mu)) <= epsilon);
if ~isempty(indx)
    mu(indx)  = (pi/2 - epsilon) * sign(mu(indx));
    phi(indx) = (pi/2 - epsilon) * sign(phi(indx));
end

% Pick up NaN place holders

x = lambda;
y = mu;

% Eliminate singularities in transformations at 0 latitude.

indx1 = find(phi == 0);
indx2 = find(phi ~= 0);

% Points at zero latitude

if ~isempty(indx1)
    x(indx1) = a * lambda(indx1);
    y(indx1) = 0;
end

% Points at non-zero latitude
%等差分纬线多圆锥投影
if ~isempty(indx2)
    N = a ./ sqrt(1 - (e*sin(phi(indx2))).^2);
    E = lambda(indx2) .* sin(phi(indx2));
    x(indx2) = N .* cot(phi(indx2)) .* sin(E);
    y(indx2) = radius.*(mu(indx2).^3.*0.01476138+mu(indx2).*0.9953537) + ...
        N .* cot(phi(indx2)) .* (1-cos(E));
end

%--------------------------------------------------------------------------

function [lat, lon] = polyconInv(mstruct, x, y)

% Radius of sphere
a = ellipsoidprops(mstruct);

% Radius of secant cylinder
phi1 = toRadians(mstruct.angleunits, mstruct.mapparallels(1));
r = a * cos(phi1);

lat = 2 * atan(y / (a + r));
lon = x / r;


function [a, e, epsilon, radius] = deriveParameters(mstruct)

epsilon = 5*epsm('radians');
[a, e, radius] = ellipsoidpropsRectifying(mstruct);