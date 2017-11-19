% [GraphPressures.m]
% [Cemal Yagcioglu]
% [September 24, 2016]
%
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]


%% Initialize the workspace
clear; format short e

%% Create vector of volumes and vectors for each gas

Vol= linspace(1.0,2.0,200);
Temp=300


%% Start and clear figure
figure(1), clf
%% Set increment for point plots and plot points and lines
MyP1 = VanDerWaals(Temp,Vol,'Helium')
plot(Vol,MyP1)
%hold on
MyP2 = VanDerWaals(Temp,Vol,'Hydrogen')
%plot(Vol,MyP2)
MyP3 = VanDerWaals(Temp,Vol,'Oxygen')
MyP4 = VanDerWaals(Temp,Vol,'Chlorine')
%plot(Vol,MyP3) 'Oxygen','Chlorine','Carbon dioxide',
%plot(Vol,MyP4)
MyP5 = VanDerWaals(Temp,Vol,'Carbon dioxide')
%plot(Vol,MyP5)
MyP6 = VanDerWaals(Temp,Vol,'Ammonia')
plot(Vol,MyP1,'k-',Vol,MyP2,'k-',Vol,MyP3,'k-',Vol,MyP4,'k-',Vol,MyP5,'k-',Vol,MyP6,'k-')
Incr = 5;
Indices = 1:Incr:length(Vol);
hold on
PointPlot=plot(...
    Vol(Indices), MyP1(Indices), 'k^',...
    Vol(Indices), MyP2(Indices), 'ko',...
    Vol(Indices), MyP3(Indices), 'kx',...
    Vol(Indices), MyP4(Indices), 'k+',...
    Vol(Indices), MyP5(Indices), 'k*',...
    Vol(Indices), MyP6(Indices), 'kp');
hold off
legend(PointPlot, 'Helium', 'Hydrogen', 'Oxygen' , 'Chlorine' , 'Carbon dioxide', 'Ammonia','Location','Northeast');

%% Add title, labels, then print
title('Change in Pressure with Volume(cy111)')
xlabel('Volume (L)')
ylabel('Pressure (atm)')
print -deps PressuresPlot