% [THREE.m]
% [Cemal Yagcioglu]
% [November 20,2016]
% Based on: General Linear Regression Example Code
% Written by: Michael R. Gustafson II
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

%% Initialize the workspace
clear; format short e


%% Load and manipulate the data

x=1:1:5
y=[2.2 2.8 3.6 4.5 5.5]
x=x'
y=y'



%% Define model equation and A matrix

        yeqn = @(coefs, x) coefs(1)*x.^0 + coefs(2)*x.^1 + coefs(3)*x.^-1;
        A    =                     [x.^0   x.^1    x.^-1];
        

%% Determine the function coefficients
MyCoefs = A\y

%% Generate estimates and model
yhat   = yeqn(MyCoefs, x);
x1=1.5
x2=4.5
est = yeqn(MyCoefs, [x1 x2])


%% Calculate statistics
% Compute sum of the squares of the data residuals
St = sum(( y - mean(y) ).^2)

% Compute sum of the squares of the estimate residuals
Sr = sum(( y - yhat ).^2)

% Compute the coefficient of determination
r2 = (St - Sr) / St
