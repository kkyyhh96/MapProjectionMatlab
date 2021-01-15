function varargout =sanson(varargin)
% ɣѷͶӰ����αԲ��ͶӰ
% �������ߵ����αԲ��ͶӰ
% �����ߣ������
mproj.default = @sansonDefault;
mproj.forward = @sansonFwd;
mproj.inverse = @sansonInv;
mproj.auxiliaryLatitudeType = 'geodetic';
mproj.classCode = 'Cyln';

varargout = applyProjection(mproj, varargin{:});

%--------------------------------------------------------------------------

function mstruct = sansonDefault(mstruct)

[mstruct.trimlat, mstruct.trimlon] ...
    = fromDegrees(mstruct.angleunits, [-90 90], [-180 180]);
mstruct.mapparallels = 0;
mstruct.nparallels   = 1;
mstruct.fixedorient  = [];

%--------------------------------------------------------------------------

function [x, y] = sansonFwd(mstruct, lat, lon)

% Radius of sphere
a = ellipsoidprops(mstruct);

% Radius of secant cylinder
phi1 = toRadians(mstruct.angleunits, mstruct.mapparallels(1));
r = a * cos(phi1);

% ɣѷͶӰ����αԲ��ͶӰ
y=r.*lat;
x=r.*cos(lat).*lon;

%--------------------------------------------------------------------------

function [lat, lon] = sansonInv(mstruct, x, y)

% Radius of sphere
a = ellipsoidprops(mstruct);

% Radius of secant cylinder
phi1 = toRadians(mstruct.angleunits, mstruct.mapparallels(1));
r = a * cos(phi1);

lat = 2 * atan(y / (a + r));
lon = x / r;