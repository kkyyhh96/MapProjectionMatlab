function [m,P]=XinJiangCompute(Phi1 ,Phi2, Lambda0, Phi0, Phi ,Lambda, Mu0)
%% ����ȽǸ�Բ׶
%% ������
% ���뾭γ��
lambda=deg2rad(Lambda);
phi=deg2rad(Phi);
% ��׼γ��,���뾭��
phi1=deg2rad(Phi1);
phi2=deg2rad(Phi2);
lambda0=deg2rad(Lambda0);
mu0=Mu0;
% ���������
ellipsoid=referenceEllipsoid('krasovsky');
r1=rcurve('parallel',ellipsoid,phi1,'radians');
r2=rcurve('parallel',ellipsoid,phi2,'radians');
r=rcurve('parallel',ellipsoid,phi,'radians');
e=ellipsoid.Eccentricity;
ev1=asin(e*sin(phi1));
ev2=asin(e*sin(phi2));
U1=tan(pi/4+phi1/2)/tan(pi/4+ev1/2)^e;
U2=tan(pi/4+phi2/2)/tan(pi/4+ev2/2)^e;
%% ͶӰ��ʽ
% ����ͶӰ����
a=log10(r1/r2)/log10(U2/U1);
K=100/mu0*r1*U1^a/a;
% ���㼫����
dtlambda=lambda-lambda0;
E=a*dtlambda;

evs=asin(e*sin(deg2rad(Phi0)));
Us=tan(pi/4+phi/2)/tan(pi/4+evs/2)^e;
ev=asin(e.*sin(phi));
U=tan(pi/4+phi./2)./tan(pi/4+ev./2).^e;
rou=K./U.^a;
rous=K./Us.^a;
% ����ֱ������
x=rous-rou.*cos(E)
y=rou.*sin(E)
% ���㳤�ȱȡ������
r=r./mu0.*100;
m=a.*K./(r.*U.^a)
P=m.^2
