data_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\Raw Data';
results_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\Graphs\';

walking_paths_names_list = {'.P1', '.P2', '.P3', '.P4'};
walking_paths_distance_list = [440, 255, 320, 205];

[ folder_list, folder_path_list, number_of_folders ] = get_folder_list(data_path);

for folder_index = 1:number_of_folders
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
        
        [ graph_save_name, graph_title ] = graph_name_generator(folder_list, walking_paths_names_list,  file_index,folder_index, results_path);
        Data_Analyzer(graph_save_name, graph_title, filepath_1, filepath_2, walking_paths_distance_list((file_index/2)));

    end
end