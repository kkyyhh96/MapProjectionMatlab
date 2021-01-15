%% 伪圆锥、伪圆柱、伪方位、多圆锥投影
ortho=[90 120 0];%正轴
horizon=[0 120 0];%横轴
oblique=[45 120 45];%斜轴
%% 彭纳投影bonne
%% 正轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('bonne', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('bonne', 'Frame', 'on', 'Grid', 'on','origin',horizon);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('bonne', 'Frame', 'on', 'Grid', 'on','origin',oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 爱凯特投影eckert1
%% 正轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert1', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert1', 'Frame', 'on', 'Grid', 'on','origin',horizon);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert1', 'Frame', 'on', 'Grid', 'on','origin',oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 爱凯特投影eckert2
%% 正轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert2', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert2', 'Frame', 'on', 'Grid', 'on','origin',horizon);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert2', 'Frame', 'on', 'Grid', 'on','origin',oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 爱凯特投影eckert3
%% 正轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert3', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert3', 'Frame', 'on', 'Grid', 'on','origin',horizon);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert3', 'Frame', 'on', 'Grid', 'on','origin',oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 爱凯特投影eckert4
%% 正轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert4', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert4', 'Frame', 'on', 'Grid', 'on','origin',horizon);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert4', 'Frame', 'on', 'Grid', 'on','origin',oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 爱凯特投影eckert5
%% 正轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert5', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert5', 'Frame', 'on', 'Grid', 'on','origin',horizon);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert5', 'Frame', 'on', 'Grid', 'on','origin',oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 爱凯特投影eckert6
%% 正轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert6', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert6', 'Frame', 'on', 'Grid', 'on','origin',horizon);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eckert6', 'Frame', 'on', 'Grid', 'on','origin',oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 摩尔威德投影mollweid
%% 正轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('mollweid', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('mollweid', 'Frame', 'on', 'Grid', 'on','origin',horizon);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('mollweid', 'Frame', 'on', 'Grid', 'on','origin',oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 古德投影goode
%% 正轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('goode', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('goode', 'Frame', 'on', 'Grid', 'on','origin',horizon);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('goode', 'Frame', 'on', 'Grid', 'on','origin',oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 多圆锥投影polycon
%% 正轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('polycon', 'Frame', 'on', 'Grid', 'on','origin',ortho)
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('polycon', 'Frame', 'on', 'Grid', 'on','origin',horizon);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('polycon', 'Frame', 'on', 'Grid', 'on','origin',oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;