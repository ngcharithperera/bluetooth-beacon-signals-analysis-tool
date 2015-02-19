function [ ] = paint_BT_icon( BT_image, location_x, location_y )
    global BT_Icons_folder_path
    uniquebgcolor=[0 0 0]; 
    BT_image_url = strcat(BT_Icons_folder_path, BT_image);
    BT_image_url = char(BT_image_url(1,1))
    [BT_Icon_Image, map, alpha] = imread(BT_image_url);
    BT_Icon_Image = imresize(BT_Icon_Image,[40 40]);

    mask = bsxfun(@eq,BT_Icon_Image,reshape(uniquebgcolor,1,1,3));
    BT_Icon_Image = imagesc(location_x, location_y, BT_Icon_Image,'alphadata',1-double(all(mask,3)));
    clear;
end
