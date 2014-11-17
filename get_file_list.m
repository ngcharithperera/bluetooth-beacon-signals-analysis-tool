function [ file_list, number_of_files ] = get_file_list( folder_path )
    a = '\' ;
    file_list = dir(char(folder_path))
    isub_file_list = [file_list(:).isdir]; %# returns logical vector
    isub_file_list = ~isub_file_list;
    nameFolds_file_list = {file_list(isub_file_list).name}';
    file_list = strcat(folder_path,a, nameFolds_file_list);
    [number_of_files, m] = size(file_list); 


end

