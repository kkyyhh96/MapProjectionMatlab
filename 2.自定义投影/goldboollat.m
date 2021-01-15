function varargout =goldboollat(varargin)
% 金兹布尔格投影任意伪圆柱投影
% 任意伪圆柱投影
% 制作者：康雨豪
mproj.default = @goldboollatDefault;
mproj.forward = @goldboollatFwd;
mproj.inverse = @goldboollatInv;
mproj.auxiliaryLatitudeType = 'geodetic';
mproj.classCode = 'Cyln';

varargout = applyProjection(mproj, varargin{:});

%--------------------------------------------------------------------------

function mstruct = goldboollatDefault(mstruct)

[mstruct.trimlat, mstruct.trimlon] ...
    = fromDegrees(mstruct.angleunits, [-90 90], [-180 180]);
mstruct.mapparallels = 0;
mstruct.nparallels   = 1;
mstruct.fixedorient  = [];

%--------------------------------------------------------------------------

function [x, y] = goldboollatFwd(mstruct, lat, lon)

% Radius of sphere
a = ellipsoidprops(mstruct);

% Radius of secant cylinder
phi1 = toRadians(mstruct.angleunits, mstruct.mapparallels(1));
r = a * cos(phi1);

% 金兹布尔格投影任意伪圆柱投影
a=1/12;
b=0.162338;
c=0.87;
d=0.000952426;
y=r.*(lat+a.*lat.^3);
x=r.*(1-b*lat.^2).*(c-d*lon.^3).*lon;

%--------------------------------------------------------------------------

function [lat, lon] = goldboollatInv(mstruct, x, y)

% Radius of sphere
a = ellipsoidprops(mstruct);

% Radius of secant cylinder
phi1 = toRadians(mstruct.angleunits, mstruct.mapparallels(1));
r = a * cos(phi1);

lat = 2 * atan(y / (a + r));
lon = x / r;
