
%% ��������
path='D:\KYH\Documents\MATLAB\Boundry\bou2_4p.shp';
XinJiang= shaperead(path, 'UseGeoCoords', true,'Selector',{@(NAME) strcmp(NAME,'�½�ά���������'), 'NAME'});
%% ���õ�ͼ���򲢻���
Map=worldmap([34 49.5],[73 97]);
setm(Map,'mapprojection','lambertstd','mapparallels',[36 40],'glinestyle','-','gcolor',[0 0 0],'mlabellocation',2,'plabellocation',2,'mlinelocation',2,'plinelocation',2);
title('�½�ά���������');
geoshow(XinJiang);
%% ��ͼ����
tightmap tight;
textm(43,87,'��³ľ��','color','b');

