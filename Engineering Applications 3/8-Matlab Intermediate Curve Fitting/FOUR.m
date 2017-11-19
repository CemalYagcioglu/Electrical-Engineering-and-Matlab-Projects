% [FOUR.m]
% [Cemal Yagcioglu]
% [November 20,2016]
% Based on: Linearized Regression Example Code 
% Written by: Michael R. Gustafson II
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

%% Initialize the workspace
clear; format short e

%% Rename and create model data
W=[70 75 77 80 82 84 87 90]
A=[2.10 2.12 2.15 2.20 2.22 2.23 2.26 2.30]
lnW=log(W)
lnA=log(A)
x=lnW'
y=lnA'

%% Define model equation and A matrix

        yeqn = @(coefs, x) coefs(1)*x.^1 + coefs(2)*x.^0;
        A    =                     [x.^1            x.^0];

%% Determine the function coefficients
MyCoefs = A\y

%% Generate estimates and model
yhat   = yeqn(MyCoefs, x);

%% Calculate statistics
% Compute sum of the squares of the data residuals
St = sum(( y - mean(y) ).^2)


% Compute sum of the squares of the estimate residuals
Sr = sum(( y - yhat ).^2)

% Compute the coefficient of determination
r2 = (St - Sr) / St

finalb = MyCoefs(1)
finala = exp(MyCoefs(2))

est=exp(yeqn(MyCoefs, log(95)))
