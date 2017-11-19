% [RunButterfly.m]
% [Cemal Yagcioglu]
% [September 24, 2016]
%
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

%% Initialize workspace
clear, figure(1), clf

%% Set up variable to store times and use Butterfly 
t = linspace(0,100,2000);
%b = linspace(0,100,2000);


%  function to get vectors for x and y coordinates
[v, y] = Butterfly(t);
disp(v) %v has the x values
disp(y) %y has the y values

plot(v,y,'k')
title('Butterfly Graph(cy111)')
xlabel('x')
ylabel('y')
grid on


%% Make plot, add grid, labels and titles, then print

print -deps ButterflyPlot % You're welcome!