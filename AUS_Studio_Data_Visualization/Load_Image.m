function [ ] = Load_Image( floor_map_image_path )
    floor_map_image = imread(floor_map_image_path);
    imshow(floor_map_image);


end

