Map = shaperead('landareas.shp','UseGeoCoords',true);
layers=length(Map);%����map��ͼ��ĸ���
for layer=1:layers
    point=length(Map(layer,1).Lat);%����ͼ���е�ĸ���
    for count=1:point
        lat=Map(layer,1).Lat(count);
        lon=Map(layer,1).Lon(count);
        [x,y]=polyconz(lat,lon);%���в��γ�߶�Բ׶ͶӰ
        %[x,y]=polycond(lat,lon);%�Ȳ��γ�߶�Բ׶ͶӰ
        Map(layer,1).Lat(count)=x;
        Map(layer,1).Lon(count)=y;
    end
end
geoshow(Map);
