clear;

global data_folder_path ;
data_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\SL_House_Data_Visualization\Raw_Data_SL_House';

global AUS_floor_map_image_path ;
AUS_floor_map_image_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\SL_House_Data_Visualization\Resources\Floor_Maps\AUS_Studio.png';

global BT_Icons_folder_path ;
BT_Icons_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\SL_House_Data_Visualization\Resources\BT_Icons\';

global Walking_direction_Icons_folder_path ;
Walking_direction_Icons_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\SL_House_Data_Visualization\Resources\Direction_Icons\'


BT_1_Icon_Location_UpperFloor_BathroomCelling = [556, 189];
BT_2_Icon_Location_UpperFloor_WashingMachine = [91, 314];
BT_3_Icon_Location_UpperFloor_Masterroom = [76, 377];
BT_4_Icon_Location_GounrFloor_TV = [212, 646];
BT_5_Icon_Location_GounrFloor_Bathroom = [541, 722];
BT_6_Icon_Location_GounrFloor_Garage = [88, 975];
BT_7_Icon_Location_GounrFloor_Fridge = [472, 755];

BT_icon_location_list = [BT_1_Icon_Location_UpperFloor_BathroomCelling,
                    BT_2_Icon_Location_UpperFloor_WashingMachine,
                    BT_3_Icon_Location_UpperFloor_Masterroom,
                    BT_4_Icon_Location_GounrFloor_TV,
                    BT_5_Icon_Location_GounrFloor_Bathroom,
                    BT_6_Icon_Location_GounrFloor_Garage,
                    BT_7_Icon_Location_GounrFloor_Fridge];
                

BT_icon_list = {'BT_Left.png', 
                'BT_Up.png', 
                'BT_Up.png',
                'BT_Right.png', 
                'BT_Up.png'
                'BT_Up.png', 
                'BT_Right.png'}

        Walking_Direction_Icon_Location_P1_Left = [451,250 ];
        Walking_Direction_Icon_Location_P1_Right = [594, 312];
        Walking_Direction_Icon_Location_P2_Up = [491, 31];
        Walking_Direction_Icon_Location_P2_Down = [562,319 ];
        Walking_Direction_Icon_Location_P3_Left = [483, 51];
        Walking_Direction_Icon_Location_P3_Right = [592, 125 ];
        Walking_Direction_Icon_Location_P4_Left = [21, 174];
        Walking_Direction_Icon_Location_P4_Right = [505, 219];
        Walking_Direction_Icon_Location_P5_Up = [255, 172];
        Walking_Direction_Icon_Location_P5_Down = [310, 328];
        Walking_Direction_Icon_Location_P6_Up = [181,171 ];
        Walking_Direction_Icon_Location_P6_Down = [224, 375];
        Walking_Direction_Icon_Location_P7_Up = [18,169 ];
        Walking_Direction_Icon_Location_P7_Down = [80,302 ];
        Walking_Direction_Icon_Location_P8_Up = [51,403 ];
        Walking_Direction_Icon_Location_P8_Down = [119,550 ];
        Walking_Direction_Icon_Location_P9_Left = [12,429 ];
        Walking_Direction_Icon_Location_P9_Right = [163,490 ];
        Walking_Direction_Icon_Location_P10_Left = [453,773 ];
        Walking_Direction_Icon_Location_P10_Right = [595,827 ];
        Walking_Direction_Icon_Location_P11_Up = [, ];
        Walking_Direction_Icon_Location_P11_Down = [, ];
        Walking_Direction_Icon_Location_P12_Left = [, ];
        Walking_Direction_Icon_Location_P12_Right = [, ];
        Walking_Direction_Icon_Location_P14_Up = [, ];
        Walking_Direction_Icon_Location_P14_Down = [, ];
        Walking_Direction_Icon_Location_P15_Left = [, ];
        Walking_Direction_Icon_Location_P15_Right = [, ];
        Walking_Direction_Icon_Location_P16_Up = [, ];
        Walking_Direction_Icon_Location_P16_Down = [, ];
        Walking_Direction_Icon_Location_P18_Up = [, ];
        Walking_Direction_Icon_Location_P18_Down = [, ];
            
            
walking_direction_icon_locations_list = [Walking_Direction_Icon_Location_P1_Left,
    Walking_Direction_Icon_Location_P1_Right,
    Walking_Direction_Icon_Location_P2_Up,
    Walking_Direction_Icon_Location_P2_Down,
    Walking_Direction_Icon_Location_P3_Left,
    Walking_Direction_Icon_Location_P3_Right,
    Walking_Direction_Icon_Location_P4_Left,
    Walking_Direction_Icon_Location_P4_Right,
    Walking_Direction_Icon_Location_P5_Up,
    Walking_Direction_Icon_Location_P5_Down,
    Walking_Direction_Icon_Location_P6_Up,
    Walking_Direction_Icon_Location_P6_Down,
    Walking_Direction_Icon_Location_P7_Up,
    Walking_Direction_Icon_Location_P7_Down,
    Walking_Direction_Icon_Location_P8_Up,
    Walking_Direction_Icon_Location_P8_Down,
    Walking_Direction_Icon_Location_P9_Left,
    Walking_Direction_Icon_Location_P9_Right,
    Walking_Direction_Icon_Location_P10_Left,
    Walking_Direction_Icon_Location_P10_Right,
    Walking_Direction_Icon_Location_P11_Up,
    Walking_Direction_Icon_Location_P11_Down,
    Walking_Direction_Icon_Location_P12_Left,
    Walking_Direction_Icon_Location_P12_Right,
    Walking_Direction_Icon_Location_P14_Up,
    Walking_Direction_Icon_Location_P14_Down,
    Walking_Direction_Icon_Location_P15_Left,
    Walking_Direction_Icon_Location_P15_Right,
    Walking_Direction_Icon_Location_P16_Up,
    Walking_Direction_Icon_Location_P16_Down,
    Walking_Direction_Icon_Location_P18_Up,
    Walking_Direction_Icon_Location_P18_Down];
             

walking_direction_icon_image_list = {'Walk_Left.png', 
                            'Walk_Right.png', 
                            'Walk_Up.png', 
                            'Walk_Down.png', 
                            'Walk_Left.png', 
                            'Walk_Right.png', 
                            'Walk_Left.png', 
                            'Walk_Right.png', 
                            'Walk_Up.png', 
                            'Walk_Down.png', 
                            'Walk_Up.png', 
                            'Walk_Down.png', 
                            'Walk_Up.png', 
                            'Walk_Down.png', 
                            'Walk_Up.png', 
                            'Walk_Down.png', 
                            'Walk_Left.png', 
                            'Walk_Right.png', 
                            'Walk_Left.png', 
                            'Walk_Right.png', 
                            'Walk_Up.png', 
                            'Walk_Down.png', 
                            'Walk_Left.png', 
                            'Walk_Right.png', 
                            'Walk_Up.png', 
                            'Walk_Down.png', 
                            'Walk_Left.png', 
                            'Walk_Right.png', 
                            'Walk_Up.png', 
                            'Walk_Down.png', 
                            'Walk_Up.png', 
                            'Walk_Down.png'};


        Heat_Map_Location_P1_Left = [451,250 ];
        Heat_Map_Location_P1_Right = [594, 312];
        Heat_Map_Location_P2_Up = [, ];
        Heat_Map_Location_P2_Down = [, ];
        Heat_Map_Location_P3_Left = [, ];
        Heat_Map_Location_P3_Right = [, ];
        Heat_Map_Location_P4_Left = [, ];
        Heat_Map_Location_P4_Right = [, ];
        Heat_Map_Location_P5_Up = [, ];
        Heat_Map_Location_P5_Down = [, ];
        Heat_Map_Location_P6_Up = [, ];
        Heat_Map_Location_P6_Down = [, ];
        Heat_Map_Location_P7_Up = [, ];
        Heat_Map_Location_P7_Down = [, ];
        Heat_Map_Location_P8_Up = [, ];
        Heat_Map_Location_P8_Down = [, ];
        Heat_Map_Location_P9_Left = [, ];
        Heat_Map_Location_P9_Right = [, ];
        Heat_Map_Location_P10_Left = [, ];
        Heat_Map_Location_P10_Right = [, ];
        Heat_Map_Location_P11_Up = [, ];
        Heat_Map_Location_P11_Down = [, ];
        Heat_Map_Location_P12_Left = [, ];
        Heat_Map_Location_P12_Right = [, ];
        Heat_Map_Location_P14_Up = [, ];
        Heat_Map_Location_P14_Down = [, ];
        Heat_Map_Location_P15_Left = [, ];
        Heat_Map_Location_P15_Right = [, ];
        Heat_Map_Location_P16_Up = [, ];
        Heat_Map_Location_P16_Down = [, ];
        Heat_Map_Location_P18_Up = [, ];
        Heat_Map_Location_P18_Down = [, ];


heat_map_location_list = [Heat_Map_Location_P1_Left,
                        Heat_Map_Location_P1_Right,
                        Heat_Map_Location_P2_Up,
                        Heat_Map_Location_P2_Down,
                        Heat_Map_Location_P3_Left,
                        Heat_Map_Location_P3_Right,
                        Heat_Map_Location_P4_Left,
                        Heat_Map_Location_P4_Right,
                        Heat_Map_Location_P5_Up,
                        Heat_Map_Location_P5_Down,
                        Heat_Map_Location_P6_Up,
                        Heat_Map_Location_P6_Down,
                        Heat_Map_Location_P7_Up,
                        Heat_Map_Location_P7_Down,
                        Heat_Map_Location_P8_Up,
                        Heat_Map_Location_P8_Down,
                        Heat_Map_Location_P9_Left,
                        Heat_Map_Location_P9_Right,
                        Heat_Map_Location_P10_Left,
                        Heat_Map_Location_P10_Right,
                        Heat_Map_Location_P11_Up,
                        Heat_Map_Location_P11_Down,
                        Heat_Map_Location_P12_Left,
                        Heat_Map_Location_P12_Right,
                        Heat_Map_Location_P14_Up,
                        Heat_Map_Location_P14_Down,
                        Heat_Map_Location_P15_Left,
                        Heat_Map_Location_P15_Right,
                        Heat_Map_Location_P16_Up,
                        Heat_Map_Location_P16_Down,
                        Heat_Map_Location_P18_Up,
                        Heat_Map_Location_P18_Down];



heat_map_rotation_list = [0, 
                        180, 
                        270, 
                        90, 
                        0, 
                        180, 
                        0, 
                        180, 
                        270, 
                        90, 
                        270, 
                        90, 
                        270, 
                        90, 
                        270, 
                        90, 
                        0, 
                        180, 
                        0, 
                        180, 
                        270, 
                        90, 
                        0, 
                        180, 
                        270, 
                        90, 
                        0, 
                        180, 
                        270, 
                        90, 
                        270, 
                        90]

heat_map_length_list = [200, 200,  200, 200, 200, 200, 200, 200,
    200, 200,  200, 200, 200, 200, 200, 200, 200, 200]

[ folder_list, folder_path_list, number_of_folders ] = get_folder_list(data_folder_path);

for folder_index = 1:number_of_folders   
    heat_map_location_index = 1
    visualization_image_save_name = folder_list(folder_index);
    visualization_image_save_name = visualization_image_save_name{1}
    visualization_image_save_name = strcat(visualization_image_save_name , '.png')
    %floor_map_image = Load_Floor_Map('AUS'); 
    h = figure;
    floor_map_image = imread('C:\ResearchCode\BT_SIGNAL_ANALYSIS\SL_House_Data_Visualization\Resources\Floor_Maps\SL_House.png');
    imshow(floor_map_image);
    hold on

    paint_BT_icon(BT_icon_list(folder_index),...        
                  BT_icon_location_list(folder_index,1),...     
                  BT_icon_location_list(folder_index,2));
%     paint_all_direction_icons(walking_direction_icon_image_list,...
%                               walking_direction_icon_locations_list);
    



    folder_path = folder_path_list(folder_index,1);
    
    [ folder_list2, folder_path_list2, number_of_folders2 ] = get_folder_list(folder_path{1});

    for folder_index2 = 1:number_of_folders2  
        
        folder_path2 = folder_path_list2(folder_index2,1);
        [ file_list, number_of_files ] = get_file_list(folder_path2{1});
        file_index = 0;
        while file_index < number_of_files
            % Create a variable to plot heats with a gap in parallel
            file_index = file_index + 1;
            filepath_1 = file_list(file_index,1);

            file_index = file_index + 1;
            filepath_2 = file_list(file_index,1);

            filepath_1 = char(filepath_1);
            filepath_2 = char(filepath_2);

            [ Raw_Data_Y1_transposed, Raw_Data_Y2_transposed ] = Data_Analyzer_Smooth(filepath_1, filepath_2);
            %hmo = HeatMap(Raw_Data_Y1_transposed);
            %colormap('hot')
            paint_heat_map(Raw_Data_Y1_transposed,...
                           heat_map_rotation_list(heat_map_location_index),...
                           heat_map_length_list(heat_map_location_index),...
                           heat_map_location_list(heat_map_location_index, 1),...
                           heat_map_location_list(heat_map_location_index, 2));

            heat_map_location_index = (heat_map_location_index + 1)

            paint_heat_map(Raw_Data_Y2_transposed,...
                           heat_map_rotation_list(heat_map_location_index),...
                           heat_map_length_list(heat_map_location_index),...
                           heat_map_location_list(heat_map_location_index, 1),...
                           heat_map_location_list(heat_map_location_index, 2));

            heat_map_location_index = (heat_map_location_index + 1)
        end
    end
    saveas(h, visualization_image_save_name,'png');
    close(h)
end
