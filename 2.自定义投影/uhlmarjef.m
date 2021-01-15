function varargout =uhlmarjef(varargin)
% 乌尔马耶夫投影任意伪圆柱投影
% 任意伪圆柱投影
% 制作者：康雨豪
mproj.default = @uhlmarjefDefault;
mproj.forward = @uhlmarjefFwd;
mproj.inverse = @uhlmarjefInv;
mproj.auxiliaryLatitudeType = 'geodetic';
mproj.classCode = 'Cyln';

varargout = applyProjection(mproj, varargin{:});

%--------------------------------------------------------------------------

function mstruct = uhlmarjefDefault(mstruct)

[mstruct.trimlat, mstruct.trimlon] ...
    = fromDegrees(mstruct.angleunits, [-90 90], [-180 180]);
mstruct.mapparallels = 0;
mstruct.nparallels   = 1;
mstruct.fixedorient  = [];

%--------------------------------------------------------------------------

function [x, y] = uhlmarjefFwd(mstruct, lat, lon)

% Radius of sphere
a = ellipsoidprops(mstruct);

% Radius of secant cylinder
phi1 = toRadians(mstruct.angleunits, mstruct.mapparallels(1));
r = a * cos(phi1);

% 乌尔马耶夫投影任意伪圆柱投影
a=0.8773826;
b=0.8;
K=0.414524;
E=asin(b.*sin(lat));
y=r.*(E./(a*b)+K.*E.^3./(3*a*b));
x=r.*a.*lon.*cos(E);

%--------------------------------------------------------------------------

function [lat, lon] = uhlmarjefInv(mstruct, x, y)

% Radius of sphere
a = ellipsoidprops(mstruct);

% Radius of secant cylinder
phi1 = toRadians(mstruct.angleunits, mstruct.mapparallels(1));
r = a * cos(phi1);

lat = 2 * atan(y / (a + r));
lon = x / r;
