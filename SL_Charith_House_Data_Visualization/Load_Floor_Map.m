function [ floor_map_image ] = Load_Floor_Map( map_name )
    global  AUS_floor_map_image_path;    
    if(strcmp(map_name, 'AUS'))
        floor_map_image = Load_Image(AUS_floor_map_image_path);
    else if(strcmp(map_name, 'SL'))
        floor_map_image = Load_Image(SL_floor_map_image_path);
        end
    end
    hold on
end

