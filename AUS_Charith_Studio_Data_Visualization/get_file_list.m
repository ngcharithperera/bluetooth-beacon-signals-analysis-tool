function [ file_list, number_of_files ] = get_file_list( folder_path )
    % Creates a file list when given a folder path
    path_seperator = '\' ;
    file_list = dir(char(folder_path));
    isub_file_list = [file_list(:).isdir]; 
    isub_file_list = ~isub_file_list;
    nameFolds_file_list = {file_list(isub_file_list).name}';
    file_list = strcat(folder_path,path_seperator, nameFolds_file_list);
    [number_of_files, ~] = size(file_list); 
end

