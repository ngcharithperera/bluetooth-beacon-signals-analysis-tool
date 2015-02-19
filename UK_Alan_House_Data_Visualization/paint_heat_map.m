function [  ] = paint_heat_map( data, rotation, length,  location_x, location_y )

    fig = figure;
    heat_map = imagesc(data)
    axis off
    saveas(heat_map,'temp.png','png');
	close(fig);
    [heat_map, map, alpha] = imread('temp.png');
    heat_map = imresize(heat_map,[15 length]);
    heat_map = imrotate(heat_map,rotation);
    uniquebgcolor=[255 255 255]; 
    mask = bsxfun(@eq,heat_map,reshape(uniquebgcolor,1,1,3));
    heat_map = imagesc(location_x, location_y, heat_map,'alphadata',1-double(all(mask,3)));
    delete('temp.png');
end

