% [PlotCharge.m]
% [Cemal Yagcioglu]
% [24 September, 2016]
% Based on: PlotCharge.m
% Written by: Michael R. Gustafson II

% I have adhered to all the tenets of the
% Duke Community Standard in creating this code.
% Signed: [cy111]


%% Initialize workspace
clear; format short e

%% Make plot
% Initialize plot
figure(1); clf
% Generate time base
t = linspace(0, .8, 1000);
% Calculate charge values using function
q = Charge(t, 10, 60, 9, .000005);
% Make plot
plot(t, q, 'k-')
title('Charge On The Capacitor Over Time(cy111)') 
xlabel('Time');
ylabel('Charge');
grid on
print -deps ChargePlot
% Add commands for labels, titles, grid, and saving plot here