clear;

global data_folder_path ;
data_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\UK_Alan_House_Data_Visualization\Raw_Data_UK_Alan_House';

global AUS_floor_map_image_path ;
AUS_floor_map_image_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\UK_Alan_House_Data_Visualization\Resources\Floor_Maps\UK_Alan_House.png';

global BT_Icons_folder_path ;
BT_Icons_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\UK_Alan_House_Data_Visualization\Resources\BT_Icons\';

global Walking_direction_Icons_folder_path ;
Walking_direction_Icons_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\UK_Alan_House_Data_Visualization\Resources\Direction_Icons\'


BT_1_Icon_Location_UpperFloor_SittingRoomTV = [109,500];
BT_2_Icon_Location_UpperFloor_KitchenFridge = [586, 417];
BT_3_Icon_Location_UpperFloor_LaundryWashingMachine = [952, 409];
BT_4_Icon_Location_BathroomMirror = [622, 141];


BT_icon_location_list = [BT_1_Icon_Location_UpperFloor_SittingRoomTV,
                    BT_2_Icon_Location_UpperFloor_KitchenFridge,
                    BT_3_Icon_Location_UpperFloor_LaundryWashingMachine,
                    BT_4_Icon_Location_BathroomMirror];
                

BT_icon_list = {'BT_Down.png', 
                'BT_Down.png', 
                'BT_Down.png',
                'BT_Up.png'}

Walking_Direction_Icon_Location_P1_Right = [1005, 387];
Walking_Direction_Icon_Location_P1_Left = [27, 452];
Walking_Direction_Icon_Location_P2_Right = [375, 477];
Walking_Direction_Icon_Location_P2_Left = [91, 607];
Walking_Direction_Icon_Location_P3_Right = [898, 23];
Walking_Direction_Icon_Location_P3_Left = [165, 96]
Walking_Direction_Icon_Location_P4_Down = [511, 151];
Walking_Direction_Icon_Location_P4_Up = [430, 55];            
Walking_Direction_Icon_Location_P5_Down = [652, 141];
Walking_Direction_Icon_Location_P5_Up = [563, 56];                
            
walking_direction_icon_list = [Walking_Direction_Icon_Location_P1_Right,
                               Walking_Direction_Icon_Location_P1_Left,
                               Walking_Direction_Icon_Location_P2_Right,
                               Walking_Direction_Icon_Location_P2_Left,
                               Walking_Direction_Icon_Location_P3_Right,
                               Walking_Direction_Icon_Location_P3_Left,
                               Walking_Direction_Icon_Location_P4_Down,
                               Walking_Direction_Icon_Location_P4_Up,
                               Walking_Direction_Icon_Location_P5_Down,
                               Walking_Direction_Icon_Location_P5_Up];
             

walking_direction_icon_image_list = {'Walk_Right.png', 
                                     'Walk_Left.png', 
                                     'Walk_Right.png',
                                     'Walk_Left.png', 
                                     'Walk_Right.png'
                                     'Walk_Left.png', 
                                     'Walk_Down.png', 
                                     'Walk_Up.png',
                                     'Walk_Down.png', 
                                     'Walk_Up.png'};


Heat_Map_Location_P1_Right = [20, 394];
Heat_Map_Location_P1_Left = [20, 429];
Heat_Map_Location_P2_Right = [80, 525];
Heat_Map_Location_P2_Left = [80, 575];
Heat_Map_Location_P3_Right = [150, 0];
Heat_Map_Location_P3_Left = [150, 40];
Heat_Map_Location_P4_Down = [472, 45];
Heat_Map_Location_P4_Up = [426, 45];
Heat_Map_Location_P5_Down = [600, 45];
Heat_Map_Location_P5_Up = [560, 45];

heat_map_location_list = [Heat_Map_Location_P1_Right,
                          Heat_Map_Location_P1_Left,
                          Heat_Map_Location_P2_Right,
                          Heat_Map_Location_P2_Left,
                          Heat_Map_Location_P3_Right,
                          Heat_Map_Location_P3_Left,
                          Heat_Map_Location_P4_Down,
                          Heat_Map_Location_P4_Up,
                          Heat_Map_Location_P5_Down,
                          Heat_Map_Location_P5_Up];



heat_map_rotation_list = [0, 180,  0, 180, 0, 180, 270, 90, 270, 90]
heat_map_length_list = [1000, 1000,  310, 310, 750, 750, 110, 110, 110, 110]


heat_map_gap_size = 10
gap_for_Up_down = [heat_map_gap_size, 0 ];
gap_for_left_right = [0, heat_map_gap_size];


gap_list = [gap_for_left_right,
            gap_for_left_right,
            gap_for_left_right,
            gap_for_Up_down,
            gap_for_Up_down];


[ folder_list, folder_path_list, number_of_folders ] = get_folder_list(data_folder_path);

for folder_index = 1:number_of_folders   
    heat_map_location_index = 1
    visualization_image_save_name = folder_list(folder_index);
    visualization_image_save_name = visualization_image_save_name{1}
    visualization_image_save_name = strcat(visualization_image_save_name , '.png')
    %floor_map_image = Load_Floor_Map('AUS'); 
    h = figure;
    floor_map_image = imread(AUS_floor_map_image_path);    
    imshow(floor_map_image);  

    
    map = colormap; % current colormap
    map(1,:) = [0,0,0];
    colormap(map)
    colormap(flipud(colormap))
    
    [cmin,cmax] = caxis;
    caxis([-110, -50])
    [cmin,cmax] = caxis;
    colorbar;
    hold on

    
    
   folder_path = folder_path_list(folder_index,1);
    
    [ folder_list2, folder_path_list2, number_of_folders2 ] = get_folder_list(folder_path{1});
    heat_map_location_index = 0;
    
    for folder_index2 = 1:number_of_folders2  
        
        folder_path2 = folder_path_list2(folder_index2,1);
        [ file_list, number_of_files ] = get_file_list(folder_path2{1});
        file_index = 0;
        heat_map_gap = 0;
        while file_index < number_of_files
            file_index = file_index + 1;
            filepath_1 = file_list(file_index,1);

            file_index = file_index + 1;
            filepath_2 = file_list(file_index,1);

            filepath_1 = char(filepath_1);
            filepath_2 = char(filepath_2);

            [ Raw_Data_Y1_transposed, Raw_Data_Y2_transposed ] = Data_Analyzer(filepath_1, filepath_2);

            heat_map_location_index1 = (2 * folder_index2) - 1

            paint_heat_map(Raw_Data_Y1_transposed,...
                           heat_map_rotation_list(heat_map_location_index1),...
                           heat_map_length_list(heat_map_location_index1),...
                           (heat_map_location_list(heat_map_location_index1, 1) + (gap_list(folder_index2,1)* (file_index/2))  ),...
                           (heat_map_location_list(heat_map_location_index1, 2) + (gap_list(folder_index2,2)* (file_index/2))   ))

            heat_map_location_index2 = (2 * folder_index2) 

            paint_heat_map(Raw_Data_Y2_transposed,...
                           heat_map_rotation_list(heat_map_location_index2),...
                           heat_map_length_list(heat_map_location_index2),...
                           (heat_map_location_list(heat_map_location_index2, 1) + (gap_list(folder_index2,1)* (file_index/2)) ),...
                           (heat_map_location_list(heat_map_location_index2, 2) + (gap_list(folder_index2,2)* (file_index/2))  ))

            heat_map_gap = heat_map_gap + heat_map_gap_size;
        end
    end
    
    paint_BT_icon(BT_icon_list(folder_index),...        
                  BT_icon_location_list(folder_index,1),...     
                  BT_icon_location_list(folder_index,2));
    paint_all_direction_icons(walking_direction_icon_image_list,...
                              walking_direction_icon_list);
    
    
    saveas(h, visualization_image_save_name,'png');
    close(h)
end