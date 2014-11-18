function [  ] = Data_Manager()
% Crawl throgh folders and files to extract data automatically.
% Extractered data is pushed to Data_analyzer
distance_array = [440, 255, 320, 205];
filepath_1 = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\Raw Data\B1.L\1413251164415';
filepath_2 = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\Raw Data\B1.L\1413251177485';
foldername = 'B1.U';
graph_save_name = 'graph_save_name';
graph_title = 'graph_title';
Data_Analyzer(graph_save_name, graph_title, filepath_1, filepath_2, distance_array(2));

end

