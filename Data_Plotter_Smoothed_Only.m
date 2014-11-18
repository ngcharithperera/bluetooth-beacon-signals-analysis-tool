function [ ] = Data_Plotter_Smoothed_Only(graph_save_name, graph_title, distance,Y_axis_label, X1, X2, Raw_Data_Y1, Raw_Data_Y2, Smoothed_Data_Y1, Smoothed_Data_Y2)

h = figure;
plot( X1,  Smoothed_Data_Y1, X2, Smoothed_Data_Y2,'r', 'LineWidth',3);
xlim([0 distance]); 
label_1 = char(legent_creator('forward', graph_title));
label_2 = char(legent_creator('backward', graph_title));
legend(label_1, label_2, 'location','best');
ylabel('Signal Strength (RSSI)');
xlabel(Y_axis_label);
title(graph_title);


extension = '.png';
graph_save_name = strcat(graph_save_name, extension);
saveas(h,graph_save_name);
close(h);
end
