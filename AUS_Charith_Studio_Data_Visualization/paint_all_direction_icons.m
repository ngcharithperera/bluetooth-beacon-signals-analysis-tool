function [] = paint_all_direction_icons(walking_direction_icon_image_list,...
                              walking_direction_icon_list)
    [number_of_icons, ~] = size(walking_direction_icon_list); 
    for icon_index = 1:number_of_icons
        paint_direction_icon(walking_direction_icon_image_list(icon_index),...
                             walking_direction_icon_list(icon_index,1),...
                             walking_direction_icon_list(icon_index,2))        
    end
end

