Map = shaperead('landareas.shp','UseGeoCoords',true);
layers=length(Map);%计算map中图层的个数
for layer=1:layers
    point=length(Map(layer,1).Lat);%计算图层中点的个数
    for count=1:point
        lat=Map(layer,1).Lat(count);
        lon=Map(layer,1).Lon(count);
        [x,y]=polyconz(lat,lon);%正切差分纬线多圆锥投影
        %[x,y]=polycond(lat,lon);%等差分纬线多圆锥投影
        Map(layer,1).Lat(count)=x;
        Map(layer,1).Lon(count)=y;
    end
end
geoshow(Map);
