% [EIGHT.m]
% [Cemal Yagcioglu]
% [November 20,2016]
% Based on: General Linear Regression Example Code
% Written by: Michael R. Gustafson II
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
%% Initialize the workspace
clear; format short e


t = [0.5 1 2 3 4 5 6 7 9]
p = [6 4.4 3.2 2.7 2 1.9 1.7 1.4 1.1]
x=t'
y=p'


%% Rename and create model data

xmodel = linspace(min(x), max(x), 100);

%% Define model equation and A matrix

        yeqn = @(coefs, x) coefs(1).*exp(-1.5.*x) + coefs(2).*exp(-0.3.*x) + coefs(3).*exp(-0.2.*x);
        A    =                     [exp(-1.5.*x)    exp(-0.3.*x)    exp(-0.2.*x)];

%% Determine the function coefficients
MyCoefs = A\y

%% Generate estimates and model
yhat   = yeqn(MyCoefs, x);
ymodel = yeqn(MyCoefs, xmodel);

%% Calculate statistics
% Compute sum of the squares of the data residuals
St = sum(( y - mean(y) ).^2)

% Compute sum of the squares of the estimate residuals
Sr = sum(( y - yhat ).^2)

% Compute the coefficient of determination
r2 = (St - Sr) / St

%% Generate plots
figure(1)
plot(x,      y,      'ko',...
     x,      yhat,   'ks',...
     xmodel, ymodel, 'k-');
xlabel('Time(s)')
 ylabel('Population')
 title('Population vs. Time Second Model(cy111)')
 legend('Data', 'Estimates', 'Model')
 print -depsc Decay21
 
 figure(2)
 tmodel=linspace(0,9,100)
 plot(tmodel,MyCoefs(1).*exp(-1.5.*tmodel),'r--')
 hold on
 plot(tmodel,MyCoefs(2).*exp(-0.3.*tmodel),'b-')
 hold on
 plot(tmodel,MyCoefs(3).*exp(-0.2.*tmodel),'g-.')
 title('Decay of A,B,C Second Model(cy111)')
 legend('Decay A', 'Decay B', 'Decay C')
 print -depsc Decay22