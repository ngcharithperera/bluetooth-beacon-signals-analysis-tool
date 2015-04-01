%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Developer: Charith Perera                                     %
%  Date: 22-02-2014                                            %
%  Purpose: Vizualize how bluetooh beacon signal strength      %
%           varies in differnt buildings                       %
%                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clear;

%% Define Global Variables
global raw_data_folder_path ;
raw_data_folder_path = '..\Raw_Data\Raw_Data_AUS_Studio';

global floor_map_image_path ;
floor_map_image_path = '..\Resources\Floor_Maps\AUS_Studio.png';

global BT_icons_folder_path ;
BT_icons_folder_path = '..\Resources\BT_Icons\';

global walking_direction_icons_folder_path ;
walking_direction_icons_folder_path = '..\Resources\Direction_Icons\';

global output_path;
output_path = '.\Output\';

%% Define the BT beacon icon locations (X, Y) coordinates
BT_1_Icon_Location_KitchenCeilings = [732, 920];
BT_2_Icon_Location_BathroomCeilings = [242, 920];
BT_3_Icon_Location_KitchenFridge = [678, 782];
BT_4_Icon_Location_BathroomSink = [56, 700];

%% Add all BT beacon icon locations to a list
BT_icon_location_list = [BT_1_Icon_Location_KitchenCeilings,
                    BT_1_Icon_Location_KitchenCeilings,
                    BT_1_Icon_Location_KitchenCeilings,
                    BT_2_Icon_Location_BathroomCeilings,
                    BT_2_Icon_Location_BathroomCeilings,
                    BT_3_Icon_Location_KitchenFridge,
                    BT_3_Icon_Location_KitchenFridge,
                    BT_4_Icon_Location_BathroomSink];
                
%% List which BT icons to be used 'in order' (Number of items in 
BT_icon_list = {'BT_Left.png', 
                'BT_Right.png', 
                'BT_Up.png',
                'BT_Right.png', 
                'BT_Up.png'
                'BT_Right.png', 
                'BT_Right.png', 
                'BT_Down.png'};
            
%% Define walking direction icon locations (X, Y) coordinates            
Walking_Direction_Icon_Location_P1_Up = [640, 200];
Walking_Direction_Icon_Location_P1_Down = [790, 1230];
Walking_Direction_Icon_Location_P2_Up = [215, 30];
Walking_Direction_Icon_Location_P2_Down = [360, 1180];
Walking_Direction_Icon_Location_P3_Left = [5, 480];
Walking_Direction_Icon_Location_P3_Right = [800, 600];
Walking_Direction_Icon_Location_P4_Left = [5, 830];
Walking_Direction_Icon_Location_P4_Right = [425, 975];            
            
%% Add all walking direction iconlocations to a list           
walking_direction_icon_list = [Walking_Direction_Icon_Location_P1_Up,
                               Walking_Direction_Icon_Location_P1_Down,
                               Walking_Direction_Icon_Location_P2_Up,
                               Walking_Direction_Icon_Location_P2_Down,
                               Walking_Direction_Icon_Location_P3_Left,
                               Walking_Direction_Icon_Location_P3_Right,
                               Walking_Direction_Icon_Location_P4_Left,
                               Walking_Direction_Icon_Location_P4_Right];
             
%% List contains the name of the walking directions icons 'in order'.
walking_direction_icon_image_list = {'Walk_Up.png', 
                                     'Walk_Down.png', 
                                     'Walk_Up.png',
                                     'Walk_Down.png', 
                                     'Walk_Left.png'
                                     'Walk_Right.png', 
                                     'Walk_Left.png', 
                                     'Walk_Right.png'};

%% Define heat map location (X, Y) coordinates
Heat_Map_Location_P1_Up = [726, 220];
Heat_Map_Location_P1_Down = [770, 220];
Heat_Map_Location_P2_Up = [296, 20];
Heat_Map_Location_P2_Down = [330, 20];
Heat_Map_Location_P3_Left = [10, 556];
Heat_Map_Location_P3_Right = [10, 606];
Heat_Map_Location_P4_Left = [20, 920];
Heat_Map_Location_P4_Right = [20, 958];

%% Add all heat map locations to a list
heat_map_location_list = [Heat_Map_Location_P1_Up,
                          Heat_Map_Location_P1_Down,
                          Heat_Map_Location_P2_Up,
                          Heat_Map_Location_P2_Down,
                          Heat_Map_Location_P3_Left,
                          Heat_Map_Location_P3_Right
                          Heat_Map_Location_P4_Left,
                          Heat_Map_Location_P4_Right];


%% List contains how to rotate each heat map (default is anti-clockwise)
heat_map_rotation_list = [90, 270,  90, 270, 180, 0, 180, 0];

%% List contains leath fo the each heat map
heat_map_length_list = [1050, 1050,  1200, 1200, 800, 800, 450, 450];

[ folder_list, folder_path_list, number_of_folders ] = get_folder_list(raw_data_folder_path);

%% Read each folder (Beacon on one location)
for folder_index = 1:number_of_folders   
    
    %set indexes
    heat_map_location_index = 1;
    file_index = 0;
    
    % Create figure and paint image
    h = figure;
    floor_map_image = imread(floor_map_image_path);
    imshow(floor_map_image);
    hold on
    
    % Generate files name to save the output
    visualization_image_save_name = folder_list(folder_index);
    visualization_image_save_name = visualization_image_save_name{1};
    visualization_image_save_name = strcat(visualization_image_save_name , '.png');
    visualization_image_save_name = strcat(output_path, visualization_image_save_name);
    
    % Set the color bar
    set_color_bar();
    
    folder_path = folder_path_list(folder_index,1);
    [ file_list, number_of_files ] = get_file_list(folder_path);
 
    %% Read data files inside the folder (each file for one path one direction)
    while file_index < number_of_files
        file_index = file_index + 1;
        filepath_1 = file_list(file_index,1);
        
        file_index = file_index + 1;
        filepath_2 = file_list(file_index,1);
        
        filepath_1 = char(filepath_1);
        filepath_2 = char(filepath_2);
        
        % Analyse data
        [ Raw_Data_Y1_transposed, Raw_Data_Y2_transposed ] = data_analyzer(filepath_1, filepath_2);

        % Paint heat maps on top of the floor map
        paint_heat_map(Raw_Data_Y1_transposed,...
                       heat_map_rotation_list(heat_map_location_index),...
                       heat_map_length_list(heat_map_location_index),...
                       heat_map_location_list(heat_map_location_index, 1),...
                       heat_map_location_list(heat_map_location_index, 2));
                   
        heat_map_location_index = (heat_map_location_index + 1);
        
        paint_heat_map(Raw_Data_Y2_transposed,...
                       heat_map_rotation_list(heat_map_location_index),...
                       heat_map_length_list(heat_map_location_index),...
                       heat_map_location_list(heat_map_location_index, 1),...
                       heat_map_location_list(heat_map_location_index, 2));
                   
        heat_map_location_index = (heat_map_location_index + 1)  ;     
    end
    
    % Paint BT beacon icons
    paint_BT_icon(BT_icon_list(folder_index),...        
                  BT_icon_location_list(folder_index,1),...     
                  BT_icon_location_list(folder_index,2));
    % Paint walknig direction icons icons
    paint_all_direction_icons(walking_direction_icon_image_list,...
                              walking_direction_icon_list);
    
    % Save the results image and close the figure
    saveas(h, visualization_image_save_name,'png');
    close(h)
end
