function [  ] = paint_heat_map( data, rotation, length,  location_x, location_y )
    h2 = figure;
    heat_map = imagesc(data); 
    [cmin,cmax] = caxis;
    caxis([-110, -50])
    map = colormap; 
    map(1,:) = [0,0,0];
    colormap(map)
    colormap jet;
    saveas(heat_map,'temp.png','png');
	close(h2);
    [heat_map, ~, ~] = imread('temp.png');
    heat_map = imcrop(heat_map,[156 69 932 735]);
    heat_map = imresize(heat_map,[20 length]);
    heat_map = imrotate(heat_map,rotation);
    uniquebgcolor=[255 255 255]; 
    mask = bsxfun(@eq,heat_map,reshape(uniquebgcolor,1,1,3));
    imagesc(location_x, location_y, heat_map,'alphadata',1-double(all(mask,3)));    
    delete('temp.png');
end

