path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\Raw Data'
results_path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\Graphs\';
d = dir(path);
isub = [d(:).isdir]; %# returns logical vector
nameFolds = {d(isub).name}';
nameFolds(ismember(nameFolds,{'.','..'})) = [];
distance_array = [440, 255, 320, 205];
path_array = {'_P1', '_P2', '_P3', '_P4'};

i = nameFolds
    a = '\' 
    C = strcat(path,a, i)
    [n, m] = size(C)
    for j = 1:n
        %k = 
        folder_path = C(j,1)
        file_list = dir(char(C(j,1)))
        isub_file_list = [file_list(:).isdir]; %# returns logical vector
        isub_file_list = ~isub_file_list;
        nameFolds_file_list = {file_list(isub_file_list).name}';
        
        CC = strcat(folder_path,a, nameFolds_file_list)
        [nn, m] = size(CC) 
        folder_name = nameFolds(j)
        folder_name= char(folder_name)
        
        jj = 0
        while jj < nn
            jj = jj + 1
            filepath_1 = CC(jj,1)
            jj = jj + 1
            filepath_2 = CC(jj,1)
            filepath_1 = char(filepath_1)
            filepath_2 = char(filepath_2)
           % filename = strcat(nameFolds(),a, nameFolds_file_list)
            graph_name = path_array(jj/2)
            graph_name = char(graph_name)
            graph_save_name = strcat(results_path, folder_name, graph_name)

        Data_Analyzer(graph_save_name, graph_save_name, filepath_1, filepath_2, distance_array((jj/2)));

        end
        

    end

clear