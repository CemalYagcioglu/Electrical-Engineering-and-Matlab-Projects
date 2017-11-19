% [Function or Script Name]
% [Cemal Yagcioglu]
% [22 september, 2016]
% 
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

% Honor Code

%% Initialize the workspace

clear; format short e

%% Genreate values and plot them
%  Generate 100 sample points for x, define Singularity, then
%  calculate the displacement based on those 100 points

x  = linspace(0, 10, 100);
S = @(x, a, n) (x>a).*((x-a).^n); %%I shortened Singularity function to S
Deflection = ((-5/6).*(S(x,0,4)-S(x,5,4))+(5/2).*(S(x,8,3))+(325/2).*(S(x,7,2))+(79/12)...
    .*(S(x,0,3))-(76/3).*(S(x,0,1)));

%  Initialize the plot, plot the values, and add
figure(1); clf
plot(x,Deflection)
%  labels, a title, and a grid.  Print the plot
grid on
title('Deflection u of a Beam (cy111)'); % Your NetID
xlabel('Distance (feet)');
ylabel('Deflection');

print -deps DisplacementPlot

%% Generate more precise values for min/max determination
%  Generate 1e6 sample points for x, then
%  calculate the displacement based on those 1e6 points
%  Note - Singularity was already defined above, just use it

x  = linspace(0, 10, 10^6);
S = @(x, a, n) (x>a).*((x-a).^n); %%I shortened Singularity function to S
Deflection = ((-5/6).*(S(x,0,4)-S(x,5,4))+(5/2).*(S(x,8,3))+(325/2).*(S(x,7,2))+(79/12)...
    .*(S(x,0,3))-(76/3).*(S(x,0,1)));

% Determine most positive and negative displacements and location
x(find(Deflection==max(Deflection)))
max(Deflection)
x(find(Deflection==min(Deflection)))
min(Deflection)
hold on
plot(x(find(Deflection==max(Deflection))),max(Deflection),'k-^')
plot(x(find(Deflection==min(Deflection))),min(Deflection),'k-^')



