%% Բ׶ͶӰ
ortho=[90 120 0];%����
horizon=[0 120 0];%����
oblique=[45 120 45];%б��
%% �Ƚ�Բ׶ͶӰlambertstd
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('lambertstd', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% �����Բ׶ͶӰeqaconicstd
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqaconicstd', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% �Ⱦ���Բ׶ͶӰeqdconicstd
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqdconicstd', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;