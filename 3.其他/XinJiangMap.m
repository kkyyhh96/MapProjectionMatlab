
%% 导入数据
path='D:\KYH\Documents\MATLAB\Boundry\bou2_4p.shp';
XinJiang= shaperead(path, 'UseGeoCoords', true,'Selector',{@(NAME) strcmp(NAME,'新疆维吾尔自治区'), 'NAME'});
%% 设置地图区域并绘制
Map=worldmap([34 49.5],[73 97]);
setm(Map,'mapprojection','lambertstd','mapparallels',[36 40],'glinestyle','-','gcolor',[0 0 0],'mlabellocation',2,'plabellocation',2,'mlinelocation',2,'plinelocation',2);
title('新疆维吾尔自治区');
geoshow(XinJiang);
%% 地图修饰
tightmap tight;
textm(43,87,'乌鲁木齐','color','b');

