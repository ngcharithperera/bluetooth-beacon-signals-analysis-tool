function [ graph_save_name, graph_name ] = graph_name_generator(folder_list, walking_paths_names_list,  file_index, folder_index, results_path)
	folder_name = folder_list(folder_index);
	folder_name= char(folder_name); 
    graph_name = walking_paths_names_list(file_index/2);
	graph_name = char(graph_name);
    graph_name = strcat(folder_name, graph_name);
	graph_save_name = strcat(results_path, folder_name, graph_name);

end

