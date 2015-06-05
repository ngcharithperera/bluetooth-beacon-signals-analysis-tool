function [ Smoothed_Data_Y1, Smoothed_Data_Y2 ] = data_analyzer_smooth(filepath_1, filepath_2)

    % Read the raw data values from the files
    [Raw_Data_Y1, ~] = raw_data_extractor(filepath_1);
    [Raw_Data_Y2, ~] = raw_data_extractor(filepath_2);

    % Eliminate any incorrect number recorded by the device
    Raw_Data_Y1_index  = Raw_Data_Y1 < 0;
    Raw_Data_Y2_index = Raw_Data_Y2 < 0;


    Raw_Data_Y1_transposed = transpose(Raw_Data_Y1_index);
    Raw_Data_Y2_transposed = transpose(Raw_Data_Y2_index);


    [Smoothed_Data_Y1, N] = smoothing_function_moving_average_filter( Raw_Data_Y1_transposed);
    [~, number_of_Smoothed_Data_elements_Y1] = size(Smoothed_Data_Y1);
    Smoothed_Data_Y1 = Smoothed_Data_Y1(N:number_of_Smoothed_Data_elements_Y1);


    [Smoothed_Data_Y2, N] = smoothing_function_moving_average_filter( Raw_Data_Y2_transposed); 
    [~, number_of_Smoothed_Data_elements_Y2] = size(Smoothed_Data_Y2);
    Smoothed_Data_Y2 = Smoothed_Data_Y2(N:number_of_Smoothed_Data_elements_Y2);

end

