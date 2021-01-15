function [x,y]=polycond(lat,lon)
%等差分纬线多圆锥投影（论文）
%输入经纬度
phi=lat;
lambdai=lon;
phi=phi/180*pi;
lambdai=lambdai/180*pi;
%计算公式
a=2.81977572474422E-8;
b=-0.000418283489244518;
x0=1.9499079012403E-5*phi^3+4.79161212198753*phi;
xn=a*phi^5+b*phi^3+(514.633610723326-90^5*a-90^3*b)/90*phi;

b=-2.44045034942499E-10;
c=4.0096141899894E-6;
yn=b*phi^6+c*phi^4+(348.583307650471-715.2375-90^6*b-90^4*c)/90^2*phi^2+715.2375;

rou=(yn^2+(xn-x0)^2)/(2*(xn-x0));
En=asin(yn/rou);
C=0.0005050505;
b=1/(1-C*180);
E=En/180*b*(1-C*abs(lambdai))*lambdai;
%输出XY坐标
x=x0+rou*(1-cos(E));
y=rou*sin(E);
end