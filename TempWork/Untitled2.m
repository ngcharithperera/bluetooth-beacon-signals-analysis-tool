load bostemp
days = (1:31*24)/24;
plot(days, tempC), axis tight;
ylabel('Temp (\circC)');
xlabel('Time elapsed from Jan 1, 2011 (days)');
title('Logan Airport Dry Bulb Temperature (source: NOAA)');


hoursPerDay = 24;
coeff24hMA = ones(1, hoursPerDay)/hoursPerDay;

avg24hTempC = filter(coeff24hMA, 1, tempC);
plot(days, [tempC avg24hTempC]);
legend('Hourly Temp','24 Hour Average (delayed)','location','best');
ylabel('Temp (\circC)');
xlabel('Time elapsed from Jan 1, 2011 (days)');
title('Logan Airport Dry Bulb Temperature (source: NOAA)');

Xm = 1:14
Ym = 1:14
B = transpose(avg24hTempC);
imagesc( B );                   % display Xm and 

%colorbar; 
axis off  