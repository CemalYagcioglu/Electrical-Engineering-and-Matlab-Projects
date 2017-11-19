% [TestSingularity.m]
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
%Singularity = @(x, a, n) (-5/6).*(((x-0).^4)-((x-5).^4))+15/6.*(x-8).^3+75.*(x-7).^2+57/6.*x.^3-238.25.*x;
%Singularity = @(x, a, n) (x-a).^n;

%MaskForA1 = (a==-1 & n==0);
%FunctionForA1 = 0;

%Singularity = @(x, a, n) ((x-a).^n).*((x>=-1 & a==-1 & n==0)|(x>0 & a==0 & n==1)|(x>1 & a==1 & n==1)|(x>3 & a==3 & n==2))
Singularity = @(x, a, n) (((x-a).^n).*(x>a))

% Your Code Here!
x  = linspace(-2, 5, 500);



plot(x, Singularity(x, -1, 0), 'k-',...
     x, Singularity(x,  0, 1), 'k--',...
     x, Singularity(x,  1, 1), 'k-.',...
     x, Singularity(x,  3, 2), 'k:');
legend('<x+1>^0', '<x>^1', '<x-1>^1', '<x-3>^2', 'Location','Northwest') % I have the newer version, thats why I needed
                                                                         % to change the given structure.
title('Four Different Values of y=<x-a>^n (cy111)'); % Your NetID
xlabel('x');
ylabel('y');
grid off
print -deps SingPlots