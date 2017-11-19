% [FIVE.m]
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
c = [0.5 0.8 1.5 2.5 4]
k = [1.1 2.5 5.3 7.6 8.9]
Divk=1./k
Divc=1./(c.^2)
x=Divc'
y=Divk'
xmodel=linspace(min(x),max(x),100)

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

kmax = 1/MyCoefs(2)
cs = MyCoefs(1)*kmax

ymodel=(kmax.*xmodel.^2)./(cs+xmodel.^2)
yvalues=(kmax.*c.^2)./(cs+c.^2)
plot(c,      k,      'ko',...
     c,      yvalues,   'ks',...
     xmodel, ymodel, 'k-');
 xlabel('c(mg/L)')
 ylabel('k')
 title('Growth Rate of Bacteria(cy111)')
 legend('Data', 'Estimates', 'Model', 'location', 'northwest')
print -depsc BacteriaPlot