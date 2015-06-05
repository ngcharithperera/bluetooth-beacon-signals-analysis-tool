%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Developer: Charith Perera                                   %
%  Date: 22-02-2014                                            %
%  Purpose: Vizualize how bluetooh beacon signal strength      %
%           varies in differnt buildings                       %
%                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;

%% Define Global Variables
global raw_data_folder_path ;
raw_data_folder_path = '..\Raw_Data\Raw_Data_UK_Alan_House';

global floor_map_image_path ;
floor_map_image_path = '..\Resources\Floor_Maps\UK_Alan_House.png';

global BT_icons_folder_path ;
BT_icons_folder_path = '..\Resources\BT_Icons\';

global walking_direction_icons_folder_path ;
walking_direction_icons_folder_path = '..\Resources\Direction_Icons\';

global output_path;
output_path = strcat('..\Results\' , datestr(now,'mm-dd-yyyy'), '\', 'UK_House\');


%% Define the BT beacon icon locations (X, Y) coordinates
BT_1_Icon_Location_UpperFloor_SittingRoomTV = [109,500];
BT_2_Icon_Location_UpperFloor_KitchenFridge = [586, 417];
BT_3_Icon_Location_UpperFloor_LaundryWashingMachine = [952, 409];
BT_4_Icon_Location_BathroomMirror = [622, 141];


%% Add all BT beacon icon locations to a list
BT_icon_location_list = [BT_1_Icon_Location_UpperFloor_SittingRoomTV;
                    BT_2_Icon_Location_UpperFloor_KitchenFridge;
                    BT_3_Icon_Location_UpperFloor_LaundryWashingMachine;
                    BT_4_Icon_Location_BathroomMirror];
   
                
%% List which BT icons to be used 'in order' (Number of items in 
BT_icon_list = {'BT_Down.png'; 
                'BT_Down.png'; 
                'BT_Down.png';
                'BT_Up.png'};

            
%% Define walking direction icon locations (X, Y) coordinates        
Walking_Direction_Icon_Location_P1_Right = [1005, 365];
Walking_Direction_Icon_Location_P1_Left = [15, 470];
Walking_Direction_Icon_Location_P2_Right = [402, 536];
Walking_Direction_Icon_Location_P2_Left = [50, 584];
Walking_Direction_Icon_Location_P3_Right = [905, 10];
Walking_Direction_Icon_Location_P3_Left = [116, 50];
Walking_Direction_Icon_Location_P4_Down = [435, 170];
Walking_Direction_Icon_Location_P4_Up = [480, 170];            
Walking_Direction_Icon_Location_P5_Down = [570, 170];
Walking_Direction_Icon_Location_P5_Up = [615, 170];                


%% Add all walking direction iconlocations to a list       
walking_direction_icon_location_list = [Walking_Direction_Icon_Location_P1_Right;
                               Walking_Direction_Icon_Location_P1_Left;
                               Walking_Direction_Icon_Location_P2_Right;
                               Walking_Direction_Icon_Location_P2_Left;
                               Walking_Direction_Icon_Location_P3_Right;
                               Walking_Direction_Icon_Location_P3_Left;
                               Walking_Direction_Icon_Location_P4_Down;
                               Walking_Direction_Icon_Location_P4_Up;
                               Walking_Direction_Icon_Location_P5_Down;
                               Walking_Direction_Icon_Location_P5_Up];
             
                           
%% List contains the name of the walking directions icons 'in order'.
walking_direction_icon_image_list = {'Walk_Right.png'; 
                                     'Walk_Left.png'; 
                                     'Walk_Right.png';
                                     'Walk_Left.png'; 
                                     'Walk_Right.png';
                                     'Walk_Left.png'; 
                                     'Walk_Down.png'; 
                                     'Walk_Up.png';
                                     'Walk_Down.png'; 
                                     'Walk_Up.png'};

                                 
%% Define heat map location (X, Y) coordinates
Heat_Map_Location_P1_Right = [20, 385];
Heat_Map_Location_P1_Left = [20, 429];
Heat_Map_Location_P2_Right = [80, 525];
Heat_Map_Location_P2_Left = [80, 575];
Heat_Map_Location_P3_Right = [150, 0];
Heat_Map_Location_P3_Left = [150, 40];
Heat_Map_Location_P4_Down = [472, 45];
Heat_Map_Location_P4_Up = [426, 45];
Heat_Map_Location_P5_Down = [600, 45];
Heat_Map_Location_P5_Up = [560, 45];


%% Add all heat map locations to a list
heat_map_location_list = [Heat_Map_Location_P1_Right;
                          Heat_Map_Location_P1_Left;
                          Heat_Map_Location_P2_Right;
                          Heat_Map_Location_P2_Left;
                          Heat_Map_Location_P3_Right;
                          Heat_Map_Location_P3_Left;
                          Heat_Map_Location_P4_Down;
                          Heat_Map_Location_P4_Up;
                          Heat_Map_Location_P5_Down;
                          Heat_Map_Location_P5_Up];


%% List contains how to rotate each heat map (default is anti-clockwise)
heat_map_rotation_list = [0, 180,  0, 180, 0, 180, 270, 90, 270, 90];


%% List contains leath fo the each heat map
heat_map_length_list = [1000, 1000,  310, 310, 750, 750, 110, 110, 110, 110];


%% Gab between to heatmaps
heat_map_gap_size = 10;
gap_for_Up_down = [heat_map_gap_size, 0 ];
gap_for_left_right = [0, heat_map_gap_size];


gap_list = [gap_for_left_right;
            gap_for_left_right;
            gap_for_left_right;
            gap_for_Up_down;
            gap_for_Up_down];


[ folder_list, folder_path_list, number_of_folders ] = get_folder_list(raw_data_folder_path);

for folder_index = 1:number_of_folders   
    
    % Generate files name to save the output
    visualization_image_save_name = folder_list(folder_index);
    visualization_image_save_name = visualization_image_save_name{1};
    visualization_image_save_name = strcat(visualization_image_save_name , '.png');
    mkdir(output_path);
    visualization_image_save_name = strcat(output_path, visualization_image_save_name);

    % Create figure and paint image
    h = figure;
    floor_map_image = imread(floor_map_image_path);
    imshow(floor_map_image);
    hold on
    
    % Set the color bar
    set_color_bar();    
    
    folder_path = folder_path_list(folder_index,1);    
    [ folder_list2, folder_path_list2, number_of_folders2 ] = get_folder_list(folder_path{1});
    
    %set indexes
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

            [ Raw_Data_Y1_transposed, Raw_Data_Y2_transposed ] = data_analyzer(filepath_1, filepath_2);

            heat_map_location_index1 = (2 * folder_index2) - 1;

            paint_heat_map(Raw_Data_Y1_transposed,...
                           heat_map_rotation_list(heat_map_location_index1),...
                           heat_map_length_list(heat_map_location_index1),...
                           (heat_map_location_list(heat_map_location_index1, 1) + (gap_list(folder_index2,1)* (file_index/2))  ),...
                           (heat_map_location_list(heat_map_location_index1, 2) + (gap_list(folder_index2,2)* (file_index/2))   ))

            heat_map_location_index2 = (2 * folder_index2); 

            paint_heat_map(Raw_Data_Y2_transposed,...
                           heat_map_rotation_list(heat_map_location_index2),...
                           heat_map_length_list(heat_map_location_index2),...
                           (heat_map_location_list(heat_map_location_index2, 1) + (gap_list(folder_index2,1)* (file_index/2)) ),...
                           (heat_map_location_list(heat_map_location_index2, 2) + (gap_list(folder_index2,2)* (file_index/2))  ))

            heat_map_gap = heat_map_gap + heat_map_gap_size;
        end
    end
    
    % Paint BT beacon icons
    paint_BT_icon(BT_icon_list(folder_index),...        
                  BT_icon_location_list(folder_index,1),...     
                  BT_icon_location_list(folder_index,2));
    
    % Paint walking direction icons icons          
    paint_all_direction_icons(walking_direction_icon_image_list,...
                              walking_direction_icon_location_list);
    
    % Save the results image and close the figure    
    saveas(h, visualization_image_save_name,'png');
    close(h)
end