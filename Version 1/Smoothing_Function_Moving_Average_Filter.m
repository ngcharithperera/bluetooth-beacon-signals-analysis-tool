function [ Smoothed_Data_Y ] = Smoothing_Function_Moving_Average_Filter( Raw_Data_Y)

N = 6; 
coefficient  = ones(1, N)/N;
Smoothed_Data_Y = filter(coefficient, 1, Raw_Data_Y);
end

