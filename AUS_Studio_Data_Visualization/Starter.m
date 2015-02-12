clear;

global data_folder_path ;
data_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\AUS_Studio_Data_Visualization\Raw_Data_AUS_Studio';

global AUS_floor_map_image_path ;
AUS_floor_map_image_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\AUS_Studio_Data_Visualization\Resources\Floor_Maps\AUS_Studio.png';

global BT_Icons_folder_path ;
BT_Icons_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\AUS_Studio_Data_Visualization\Resources\BT_Icons\';

global Walking_direction_Icons_folder_path ;
Walking_direction_Icons_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\AUS_Studio_Data_Visualization\Resources\Direction_Icons\'


BT_1_Icon_Location_KitchenCeilings = [732, 920];
BT_2_Icon_Location_BathroomCeilings = [242, 920];
BT_3_Icon_Location_KitchenFridge = [678, 782];
BT_4_Icon_Location_BathroomSink = [56, 700];

BT_icon_location_list = [BT_1_Icon_Location_KitchenCeilings,
                    BT_1_Icon_Location_KitchenCeilings,
                    BT_1_Icon_Location_KitchenCeilings,
                    BT_2_Icon_Location_BathroomCeilings,
                    BT_2_Icon_Location_BathroomCeilings,
                    BT_3_Icon_Location_KitchenFridge,
                    BT_3_Icon_Location_KitchenFridge,
                    BT_4_Icon_Location_BathroomSink];
                

BT_icon_list = {'BT_Left.png', 
                'BT_Right.png', 
                'BT_Up.png',
                'BT_Right.png', 
                'BT_Up.png'
                'BT_Right.png', 
                'BT_Right.png', 
                'BT_Down.png'}

Walking_Direction_Icon_Location_P1_Up = [784, 286];
Walking_Direction_Icon_Location_P1_Down = [814, 1254];
Walking_Direction_Icon_Location_P2_Up = [330, 68];
Walking_Direction_Icon_Location_P2_Down = [306, 1188];
Walking_Direction_Icon_Location_P3_Left = [36, 570];
Walking_Direction_Icon_Location_P3_Right = [788, 570];
Walking_Direction_Icon_Location_P4_Left = [24, 900];
Walking_Direction_Icon_Location_P4_Right = [458, 948];            
            
            
walking_direction_icon_list = [Walking_Direction_Icon_Location_P1_Up,
                               Walking_Direction_Icon_Location_P1_Down,
                               Walking_Direction_Icon_Location_P2_Up,
                               Walking_Direction_Icon_Location_P2_Down,
                               Walking_Direction_Icon_Location_P3_Left,
                               Walking_Direction_Icon_Location_P3_Right,
                               Walking_Direction_Icon_Location_P4_Left,
                               Walking_Direction_Icon_Location_P4_Right];
             

walking_direction_icon_image_list = {'Walk_Up.png', 
                                     'Walk_Down.png', 
                                     'Walk_Up.png',
                                     'Walk_Down.png', 
                                     'Walk_Left.png'
                                     'Walk_Right.png', 
                                     'Walk_Left.png', 
                                     'Walk_Right.png'};










Heat_Map_Location_P1_Up = [726, 310];
Heat_Map_Location_P1_Down = [770, 310];
Heat_Map_Location_P2_Up = [296, 378];
Heat_Map_Location_P2_Down = [330, 378];
Heat_Map_Location_P3_Left = [22, 526];
Heat_Map_Location_P3_Right = [22, 606];
Heat_Map_Location_P4_Left = [28, 920];
Heat_Map_Location_P4_Right = [28, 958];



[ folder_list, folder_path_list, number_of_folders ] = get_folder_list(data_folder_path);

for folder_index = 1:number_of_folders   
    visualization_image_save_name = folder_list(folder_index);
    Load_Floor_Map('AUS');    
    paint_BT_icon(BT_icon_list(folder_index),...        
                  BT_icon_location_list(folder_index,1),...     
                  BT_icon_location_list(folder_index,2));
    paint_all_direction_icons(walking_direction_icon_image_list,...
                              walking_direction_icon_list);
    
    folder_path = folder_path_list(folder_index,1);
    [ file_list, number_of_files ] = get_file_list(folder_path);
    file_index = 0;
    while file_index < number_of_files
        file_index = file_index + 1;
        filepath_1 = file_list(file_index,1);
        
        file_index = file_index + 1;
        filepath_2 = file_list(file_index,1);
        
        filepath_1 = char(filepath_1);
        filepath_2 = char(filepath_2);
        
        %[ graph_save_name, graph_title ] = graph_name_generator(folder_list, walking_paths_names_list,  file_index,folder_index, results_path);
        %Data_Analyzer(graph_save_name, graph_title, filepath_1, filepath_2, walking_paths_distance_list((file_index/2)), starting_point_name_list(file_index/2));

    end
end
