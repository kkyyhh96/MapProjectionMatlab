function varargout = gnomonic(varargin)
% α��λͶӰ
% �й���������Ҷ÷����״
% �����ߣ������
mproj.default = @gnomonicDefault;
mproj.forward = @gnomonicFwd;
mproj.inverse = @gnomonicInv;
mproj.auxiliaryLatitudeType = 'geodetic';
mproj.classCode = 'Azim';

varargout = applyAzimuthalProjection(mproj, varargin{:});

%--------------------------------------------------------------------------

function mstruct = gnomonicDefault(mstruct)

[mstruct.trimlat, mstruct.trimlon] ...
          = fromDegrees(mstruct.angleunits,[-90 90],[-180 180]);
mstruct.mapparallels = [];
mstruct.nparallels   = 0;
mstruct.fixedorient  = [];

%--------------------------------------------------------------------------

function [x, y] = gnomonicFwd(mstruct, rng, az)
%α��λͶӰ
rou=rng;
E=az+0.005308/0.453786.*rng.*sin(3*(15/180*pi+az));
x=rou.*sin(E);
y=rou.*cos(E);
%--------------------------------------------------------------------------

function [rng, az] = gnomonicInv(mstruct, x, y)

a = ellipsoidprops(mstruct);

rng = atan(hypot(x,y) / a);
az = atan2(x,y);
