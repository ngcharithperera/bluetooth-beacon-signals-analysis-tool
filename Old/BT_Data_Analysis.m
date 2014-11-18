function [ output_args ] = BT_Data_Analysis( input_args )
%Default values to be replaced
file_name = 'something';
graph_title = 'Extract from file name';
graph_save_name = 'charith';
x_values = [0,1,2,3,4,5,6,7,8,9];
y_values = [0,2,4,6,8,10,12,14,16,18];

% load the data set
load bostemp
days = (1:31*24)/24;
h = figure;
plot(days, tempC), axis tight;
hoursPerDay = 24;
coeff24hMA = ones(1, hoursPerDay)/hoursPerDay;

avg24hTempC = filter(coeff24hMA, 1, tempC);

plot(days, [tempC avg24hTempC]);
legend('Raw Data Sariability','Smoothed Signal Variability','location','best');
ylabel('Signal Strength (RSSI)');
xlabel('Distance (cm)');
title(graph_title);
saveas(h,graph_save_name,'png');


end

