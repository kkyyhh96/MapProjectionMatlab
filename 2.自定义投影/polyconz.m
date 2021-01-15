function [x,y]=polyconz(lat,lon)
% 正切差分纬线多圆锥投影
% 输入经纬度
Phi=lat;
Lambda=lon;
%Lambda=lon-120;%如果以东经120度为中央经线
Phi=Phi/180*pi;
lambdai=Lambda/180*pi;
% 椭球体相关参数
R=637111600;
mu0=14000000;
% 计算公式
x0=(Phi+0.06683225*Phi.^4)*R/mu0;
xn=x0+9.5493*Phi;
yn=sqrt(112.^2-xn.^2)+20;
rou=(yn.^2+(xn-x0).^2)/2/(xn-x0);
En=asin(yn/rou);
lambdan=pi;
Ei=En/lambdan*1.1*(1-0.10096478*tan(lambdai/5))*lambdai;
y0=132/210/180*pi*1.1*(1-0.10096478*tan(lambdai/5))*lambdai;
q=rou+x0;
% 输出xy坐标
x=q-rou*cos(Ei);
y=y0+rou*sin(Ei);
end
