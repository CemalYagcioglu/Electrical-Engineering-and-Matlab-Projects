% [BeamSingularity.m]
% [Cemal Yagcioglu]
% [September 24, 2016]
% Based on: TestSingularity.m
% Written by: Michael R. Gustafson II
% 
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

%% Change the code in lines 14 and 21

clear; format short e
x  = linspace(0, 10, 100);
S = @(x, a, n) (x>a).*((x-a).^n); %%I shortened Singularity function to S
Deflection = ((-5/6).*(S(x,0,4)-S(x,5,4))+(5/2).*(S(x,8,3))+(325/2).*(S(x,7,2))+(79/12)...
    .*(S(x,0,3))-(76/3).*(S(x,0,1)));

% Your Code Here!



plot(x, Singularity(x, -1, 0), 'k-',...
     x, Singularity(x,  0, 1), 'k--',...
     x, Singularity(x,  1, 1), 'k-.',...
     x, Singularity(x,  3, 2), 'k:');
legend('<x+1>^0', '<x>^1', '<x-1>^1', '<x-3>^2', 'Location','Northwest') % I have the newer version, thats why I needed
                                                                         % to change the given structure.
title('Deflection u of a Beam (cy111)'); % Your NetID
xlabel('Distance (feet)');
ylabel('Deflection');
grid off 
print -deps Deflection_u