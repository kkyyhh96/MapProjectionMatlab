phi=(34:0.5:49.5);
[m p]=XinJiangCompute(36 ,48 ,85 ,36 ,phi,85, 4000000);
y=phi-phi+1;
plot(phi,m,'r',phi,p,'g',phi,y,'b');