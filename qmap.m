function [] = qmap(bigLon, bigLat, para)
figure
m_proj('robinson', 'lat', [-90, 90], 'lon', [-180, 180])

m_pcolor(bigLon, bigLat, para);shading flat
hold on
[shape] = coasts_only([-180,180], [-90, 90]);

for icost = 1:1:numel(shape)
    if numel(shape(icost).Lon)<100
        continue
    end
    m_plot(shape(icost).Lon,shape(icost).Lat,'k-')

end
% m_coast;
m_grid;

end