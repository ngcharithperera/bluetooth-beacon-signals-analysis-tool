function [ Raw_Data_Y1_transposed, Raw_Data_Y2_transposed ] = Data_Analyzer(filepath_1, filepath_2)


[Raw_Data_Y1, no_of_elements_in_Y1] = Raw_Data_Extractor4(filepath_1);
[Raw_Data_Y2, no_of_elements_in_Y2] = Raw_Data_Extractor4(filepath_2);


Raw_Data_Y1_index  = find(Raw_Data_Y1 < 0)
Raw_Data_Y2_index = find(Raw_Data_Y2 < 0)

Raw_Data_Y1 = Raw_Data_Y1(Raw_Data_Y1_index)
Raw_Data_Y2 = Raw_Data_Y2(Raw_Data_Y2_index)

Raw_Data_Y1_transposed = transpose(Raw_Data_Y1);
Raw_Data_Y2_transposed = transpose(Raw_Data_Y2);

% segment_Y1 = distance / no_of_elements_in_Y1;
% segment_Y2 = distance / no_of_elements_in_Y2;
% 
% X1 = Data_Transposer_X( segment_Y1, no_of_elements_in_Y1  );
%X2 = Data_Transposer_X( segment_Y2, no_of_elements_in_Y2  );

%X2 = flip(X2);

%Raw_Data_Y1 = Data_Transposer_Y(Raw_Data_Y1, no_of_elements_in_Y1 );
%Raw_Data_Y2 = Data_Transposer_Y(Raw_Data_Y2, no_of_elements_in_Y2);


%Raw_Data_Y2 = flip(Raw_Data_Y2);

%Smoothed_Data_Y1 = Smoothing_Function_Moving_Average_Filter( Raw_Data_Y1);
%Smoothed_Data_Y2 = Smoothing_Function_Moving_Average_Filter( Raw_Data_Y2); 


%Data_Plotter(graph_save_name, graph_title, distance, X1, X2, Raw_Data_Y1, Raw_Data_Y2, Smoothed_Data_Y1, Smoothed_Data_Y2)
%Data_Plotter_Smoothed_Only(graph_save_name, graph_title, distance, Y_axis_label, X1, X2, Raw_Data_Y1, Raw_Data_Y2, Smoothed_Data_Y1, Smoothed_Data_Y2);

end

