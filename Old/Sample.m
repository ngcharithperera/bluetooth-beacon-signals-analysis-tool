clear;
filepath = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\Raw Data\B1.U\1413250830857';
[Raw_Data, no_of_elements_in_X] = Raw_Data_Extractor(filepath);

figure;
Distace = 100;
segment = Distace / no_of_elements_in_X;
d=0;
Y =  ones(1,no_of_elements_in_X);
%X =  ones(1,no_of_elements_in_X);




for i = 1:no_of_elements_in_X
    d = d + segment;
    Y(1,i) = d;
end

for j = 1:no_of_elements_in_X    
    X(1,j) = Raw_Data{j};
end
hoursPerDay = no_of_elements_in_X;
hoursPerDay = 5;




coeff24hMA = ones(1, hoursPerDay)/hoursPerDay;

X2 = filter(coeff24hMA, 1, X);
plot(Y, X, Y, X2);

% plot(Y, X);
xlim([0 100]); 
 legend('Raw Data Sariability','Smoothed Signal Variability','location','best');
 ylabel('Signal Strength (RSSI)');
 xlabel('Distance (cm)');
% title(graph_title);
% saveas(h,graph_save_name,'png');