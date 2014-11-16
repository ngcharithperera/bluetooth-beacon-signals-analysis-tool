function [ ] = Data_Plotter(graph_save_name, graph_title, distance,  X1, X2, Raw_Data_Y1, Raw_Data_Y2, Smoothed_Data_Y1, Smoothed_Data_Y2)
h = figure;
plot(X1, Raw_Data_Y1, X2, Raw_Data_Y2, X1,  Smoothed_Data_Y1, X2, Smoothed_Data_Y2);
xlim([0 distance]); 
legend('Raw Data Variability 1','Raw Data Variability 2','Smoothed Data Variability 1','Smoothed Data Variability 1','location','best');
ylabel('Signal Strength (RSSI)');
xlabel('Distance (cm)');
title(graph_title);
saveas(h,graph_save_name,'png');
end

