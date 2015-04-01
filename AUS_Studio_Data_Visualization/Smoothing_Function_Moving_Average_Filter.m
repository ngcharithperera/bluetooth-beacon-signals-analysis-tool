function [ Smoothed_Data_Y ] = smoothing_function_moving_average_filter( Raw_Data_Y)
N = 6; 
coefficient  = ones(1, N)/N;
Smoothed_Data_Y = filter(coefficient, 1, Raw_Data_Y);
end

