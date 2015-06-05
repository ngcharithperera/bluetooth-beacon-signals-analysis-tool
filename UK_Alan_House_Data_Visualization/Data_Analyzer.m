function [ Raw_Data_Y1_transposed, Raw_Data_Y2_transposed ] = data_analyzer(filepath_1, filepath_2)

    % Read the raw data values from the files
    [Raw_Data_Y1, ~] = raw_data_extractor(filepath_1);
    [Raw_Data_Y2, ~] = raw_data_extractor(filepath_2);
    
    % Eliminate any incorrect number recorded by the device
    Raw_Data_Y1_index  = Raw_Data_Y1 < 0;
    Raw_Data_Y2_index = Raw_Data_Y2 < 0;

    Raw_Data_Y1 = Raw_Data_Y1(Raw_Data_Y1_index);
    Raw_Data_Y2 = Raw_Data_Y2(Raw_Data_Y2_index);

    Raw_Data_Y1_transposed = transpose(Raw_Data_Y1);
    Raw_Data_Y2_transposed = transpose(Raw_Data_Y2);

end

