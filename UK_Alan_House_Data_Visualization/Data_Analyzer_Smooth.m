function [ Smoothed_Data_Y1, Smoothed_Data_Y2 ] = data_analyzer_smooth(filepath_1, filepath_2)
    
    % Read the raw data values from the files
    [Raw_Data_Y1, ~] = Raw_Data_Extractor4(filepath_1);
    [Raw_Data_Y2, ~] = Raw_Data_Extractor4(filepath_2);

    % Eliminate any incorrect number recorded by the device
    Raw_Data_Y1_transposed = transpose(Raw_Data_Y1);
    Raw_Data_Y2_transposed = transpose(Raw_Data_Y2);

    Smoothed_Data_Y1 = Smoothing_Function_Moving_Average_Filter( Raw_Data_Y1_transposed);
    [~, number_of_Smoothed_Data_elements_Y1] = size(Smoothed_Data_Y1);
    Smoothed_Data_Y1 = Smoothed_Data_Y1(6:number_of_Smoothed_Data_elements_Y1);

    Smoothed_Data_Y2 = Smoothing_Function_Moving_Average_Filter( Raw_Data_Y2_transposed); 
    [~, number_of_Smoothed_Data_elements_Y2] = size(Smoothed_Data_Y2);
    Smoothed_Data_Y2 = Smoothed_Data_Y2(6:number_of_Smoothed_Data_elements_Y2);

end

