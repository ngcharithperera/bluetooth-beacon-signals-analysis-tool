function [  ] = paint_heat_map( data, rotation, length,  location_x, location_y )

    fig = figure;
    heat_map = imagesc(data)
    %set(gca, 'CLim', [-110, -60]);
    
    [cmin,cmax] = caxis;
    caxis([-110, -50])
    map = colormap; % current colormap
    map(1,:) = [0,0,0];
    colormap(map)
    %colormap(flipud(colormap))
    %colorbar;
    %axis off
    saveas(heat_map,'temp.png','png');
	close(fig);
    [heat_map, map, alpha] = imread('temp.png');
    %imshow(heat_map);
    %close;
    heat_map = imcrop(heat_map,[156 69 932 735]);
    %imshow(heat_map);
    heat_map = imresize(heat_map,[8 length]);
    heat_map = imrotate(heat_map,rotation);
    uniquebgcolor=[255 255 255]; 
    mask = bsxfun(@eq,heat_map,reshape(uniquebgcolor,1,1,3));
    heat_map = imagesc(location_x, location_y, heat_map,'alphadata',1-double(all(mask,3)));
    
    delete('temp.png');
end

