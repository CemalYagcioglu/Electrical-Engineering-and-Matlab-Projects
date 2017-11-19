% [TWO.m]
% [Cemal Yagcioglu]
% [November 20,2016]
% Based on: General Linear Regression Example Code
% Written by: Michael R. Gustafson II
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

clear
%% Rename and create model data
xx=1:1:10
yy=[10 14 16 18 19 20 21 22 23 23]
lnx=log(xx)
x=lnx(:)
y=yy(:)


%% Define model equation and A matrix

        yeqn = @(coefs, x) coefs(1)*x.^1 + coefs(2)*x.^0;
        A    = [x.^1 x.^0];


%% Determine the function coefficients
MyCoefs = A\y

%% Generate estimates and model
yhat   = yeqn(MyCoefs, x);
x1=log(2.5)
x2=log(11)
est = yeqn(MyCoefs, [x1  x2])

%% Calculate statistics
% Compute sum of the squares of the data residuals
St = sum(( y - mean(y) ).^2)

% Compute sum of the squares of the estimate residuals
Sr = sum(( y - yhat ).^2)

% Compute the coefficient of determination
r2 = (St - Sr) / St
