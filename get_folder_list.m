function [ folder_list, folder_path_list, number_of_folders ] = get_folder_list( data_path)
    path_seperator = '\' ;
    folder_content_list = dir(data_path);
    isub = [folder_content_list(:).isdir]; 
    nameFolds = {folder_content_list(isub).name}';
    nameFolds(ismember(nameFolds,{'.','..'})) = [];
    folder_list = nameFolds;
    folder_path_list = strcat(data_path, path_seperator, folder_list);
    [number_of_folders, m] = size(folder_path_list);
end

