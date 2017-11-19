%% Initialize the workspace
% Clear all variables
clear
% Change display to short exponential format
format short e

%% Load and manipulate the data
% Load data from Beam2.dat
load Beam2.dat
% Copy data from each column into new variables
Mass = Beam2(:,1);
Displacement = Beam2(:,2);
% Convert Mass to a Force measurement
Force = Mass*9.81;
% Convert Displacement in inches to meters
Displacement = (Displacement*2.54)/100;

%% Perform calculations
% Use polyfit to find first-order fit polynomials
P = polyfit(Force, Displacement, 1)

%% Generate predictions
% Create 100 representational Force values
ForceModel = linspace(min(Force),max(Force),100);
% Calculate Displacement predictions
DispModel = polyval(P, ForceModel);

%% Generate and save plots
% Bring up a figure window
figure(1)
% Clear the figure window
clf
% Plot Displacement as a function of Force
plot(Force, Displacement, 'ko')
% Turn hold on, plot the model values, and turn hold off
hold on
plot (ForceModel, DispModel, 'k-')
hold off
% Turn the grid on
grid on
% Label and title the graph
xlabel('Force (Newtons)')
ylabel('Displacement (meters)')
title('Displacement vs. Force for Beam2.dat (cy111)')
% Save the graph to PostScript
print -deps RunCanPlot