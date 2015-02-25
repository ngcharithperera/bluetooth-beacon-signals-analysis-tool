clear;

global data_folder_path ;
data_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\SL_House_Data_Visualization\Raw_Data_SL_House';

global AUS_floor_map_image_path ;
AUS_floor_map_image_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\SL_House_Data_Visualization\Resources\Floor_Maps\SL_House.png';

global BT_Icons_folder_path ;
BT_Icons_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\SL_House_Data_Visualization\Resources\BT_Icons\';

global Walking_direction_Icons_folder_path ;
Walking_direction_Icons_folder_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\SL_House_Data_Visualization\Resources\Direction_Icons\'


BT_1_Icon_Location_UpperFloor_BathroomCelling = [553, 186];
BT_2_Icon_Location_UpperFloor_WashingMachine = [91, 314];
BT_3_Icon_Location_UpperFloor_Masterroom = [76, 377];
BT_4_Icon_Location_GounrFloor_TV = [202, 646];
BT_5_Icon_Location_GounrFloor_Bathroom = [541, 722];
BT_6_Icon_Location_GounrFloor_Garage = [88, 975];
BT_7_Icon_Location_GounrFloor_Fridge = [460, 755];

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

            
    Walking_Direction_Icon_Location_P1_Left = [420, 242];
    Walking_Direction_Icon_Location_P1_Right = [420, 266];
    Walking_Direction_Icon_Location_P2_Up = [490, 350];
    Walking_Direction_Icon_Location_P2_Down = [518,350 ];
    Walking_Direction_Icon_Location_P3_Left = [460, 74];
    Walking_Direction_Icon_Location_P3_Right = [460, 106 ];
    Walking_Direction_Icon_Location_P4_Left = [10, 144];
    Walking_Direction_Icon_Location_P4_Right = [10, 224];
    Walking_Direction_Icon_Location_P5_Up = [260, 332];
    Walking_Direction_Icon_Location_P5_Down = [292, 332];
    Walking_Direction_Icon_Location_P6_Up = [196, 387];
    Walking_Direction_Icon_Location_P6_Down = [225, 387];
    Walking_Direction_Icon_Location_P7_Up = [60, 144];
    Walking_Direction_Icon_Location_P7_Down = [90, 144];
    Walking_Direction_Icon_Location_P8_Up = [64, 568];
    Walking_Direction_Icon_Location_P8_Down = [98,568];
    Walking_Direction_Icon_Location_P9_Left = [165, 437];
    Walking_Direction_Icon_Location_P9_Right = [165,467];
    Walking_Direction_Icon_Location_P10_Left = [430,780];
    Walking_Direction_Icon_Location_P10_Right = [430, 820];
    Walking_Direction_Icon_Location_P11_Up = [498 500];
    Walking_Direction_Icon_Location_P11_Down = [523, 500];
    Walking_Direction_Icon_Location_P12_Left = [460, 564];
    Walking_Direction_Icon_Location_P12_Right = [460, 595];
    Walking_Direction_Icon_Location_P14_Up = [330, 565];
    Walking_Direction_Icon_Location_P14_Down = [365, 565];
    Walking_Direction_Icon_Location_P15_Left = [155, 695];
    Walking_Direction_Icon_Location_P15_Right = [155,725];
    Walking_Direction_Icon_Location_P16_Up = [238, 565];
    Walking_Direction_Icon_Location_P16_Down = [265, 565];
    Walking_Direction_Icon_Location_P18_Up = [130, 144];
    Walking_Direction_Icon_Location_P18_Down = [160, 144];
            
            
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


    Heat_Map_Location_P1_Left = [446, 236];
    Heat_Map_Location_P1_Right = [446, 260];
    Heat_Map_Location_P2_Up = [481, 8];
    Heat_Map_Location_P2_Down = [510, 8];
    Heat_Map_Location_P3_Left = [481, 62];
    Heat_Map_Location_P3_Right = [481, 100];
    Heat_Map_Location_P4_Left = [10, 167];
    Heat_Map_Location_P4_Right = [10, 192];
    Heat_Map_Location_P5_Up = [255, 167];
    Heat_Map_Location_P5_Down = [285, 167];
    Heat_Map_Location_P6_Up = [187, 167];
    Heat_Map_Location_P6_Down = [214, 167];
    Heat_Map_Location_P7_Up = [50, 170];
    Heat_Map_Location_P7_Down = [82, 170];
    Heat_Map_Location_P8_Up = [53, 400];
    Heat_Map_Location_P8_Down = [88, 400];
    Heat_Map_Location_P9_Left = [10, 430];
    Heat_Map_Location_P9_Right = [10 , 460];
    Heat_Map_Location_P10_Left = [450, 775];
    Heat_Map_Location_P10_Right = [450, 815];
    Heat_Map_Location_P11_Up = [490,528 ];
    Heat_Map_Location_P11_Down = [515, 528];
    Heat_Map_Location_P12_Left = [481, 558];
    Heat_Map_Location_P12_Right = [481, 590 ];
    Heat_Map_Location_P14_Up = [327,588];
    Heat_Map_Location_P14_Down = [360, 588];
    Heat_Map_Location_P15_Left = [180, 690];
    Heat_Map_Location_P15_Right = [180, 720 ];
    Heat_Map_Location_P16_Up = [233, 588];
    Heat_Map_Location_P16_Down = [260, 588];
    Heat_Map_Location_P18_Up = [124, 165];
    Heat_Map_Location_P18_Down = [155 ,165 ];


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



heat_map_rotation_list = [180, 
                        0, 
                        90, 
                        270, 
                        180, 
                        0, 
                        180, 
                        0, 
                        90, 
                        270, 
                        90, 
                        270, 
                        90, 
                        270, 
                        90, 
                        270, 
                        180, 
                        0, 
                        180, 
                        0, 
                        90, 
                        270, 
                        180, 
                        0, 
                        90, 
                        270, 
                        180, 
                        0, 
                        90, 
                        270, 
                        90, 
                        270]

heat_map_length_list = [155, 155,  330, 330, 120, 120, 500, 500,...
    160, 160,  210, 210, 140, 140, 150, 150, 145, 145, 125, 125,300,300, 115,115,...
    145,145,335,335,260,260,175,175]


heat_map_gap_size = 5
gap_for_Up_down = [heat_map_gap_size, 0 ];
gap_for_left_right = [0, heat_map_gap_size];


gap_list = [gap_for_left_right,
            gap_for_Up_down,
            gap_for_left_right,
            gap_for_left_right,
            gap_for_Up_down,
            gap_for_Up_down,
            gap_for_Up_down
            gap_for_Up_down,
            gap_for_left_right,
            gap_for_left_right,
            gap_for_Up_down,
            gap_for_left_right,
            gap_for_Up_down,
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
%     map(64,:) = [0,0,0];
    map(1,:) = [0,0,0];

    colormap(map)
    %colormap(flipud(colormap))
    
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
                              walking_direction_icon_locations_list);
    
    
    saveas(h, visualization_image_save_name,'png');
    close(h)
end