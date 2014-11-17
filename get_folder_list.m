function [ folder_list, folder_path_list, number_of_folders ] = get_folder_list( data_path)
    folder_content_list = dir(data_path);
    isub = [folder_content_list(:).isdir]; 
    nameFolds = {folder_content_list(isub).name}';
    nameFolds(ismember(nameFolds,{'.','..'})) = [];
    folder_list = nameFolds;
    a = '\' ;
    folder_path_list = strcat(data_path, a, folder_list);
    [number_of_folders, m] = size(folder_path_list);
end

