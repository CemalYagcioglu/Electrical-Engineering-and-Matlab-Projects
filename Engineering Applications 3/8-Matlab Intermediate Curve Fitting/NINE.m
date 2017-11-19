% [NINE.m]
% [Cemal Yagcioglu]
% [November 20,2016]
% Based on: Linearized Regression Example Code
% Written by: Michael R. Gustafson II
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
%% Initialize the workspace
clear; format short e

 
%% Load and manipulate the data

Mass=[400 70 45 2 0.3 0.16]
Metabolism=[270 82 50 4.8 1.45 0.97]

%% Rename and create model data
x = Mass'
y = Metabolism'
xmodel = linspace(min(x), max(x), 100);

%% Define the model equation; transform the variables; find the linearized fit; transform back

%model = 'exponential'
%switch model
%    case 'exponential'
        yeqnE = @(coefs, x) coefs(1).*exp(coefs(2).*x);
        xiE  = x;
        etaE = log(y);
        PE = polyfit(xiE, etaE, 1);
        MyCoefsE(1) = exp(PE(2));
        MyCoefsE(2) = PE(1)
%    case 'power law'
        yeqnP = @(coefs, x) coefs(1).*x.^coefs(2);
        xiP  = log10(x);
        etaP = log10(y);
        PP = polyfit(xiP, etaP, 1);
        MyCoefsP(1) = 10^(PP(2));
        MyCoefsP(2) = PP(1)
 %   case 'sat growth'
        yeqnS = @(coefs, x) coefs(1).*x./(coefs(2)+x);
        xiS  = 1./x;
        etaS = 1./y;
        PS = polyfit(xiS, etaS, 1);
        MyCoefsS(1) =    1/PS(2);
        MyCoefsS(2) = PS(1)/PS(2)
   
 
%% Generate estimates and model

yhatE   = yeqnE(MyCoefsE, x);
ymodelE = yeqnE(MyCoefsE, xmodel);

yhatP   = yeqnP(MyCoefsP, x);
ymodelP = yeqnP(MyCoefsP, xmodel);

yhatS   = yeqnS(MyCoefsS, x);
ymodelS = yeqnS(MyCoefsS, xmodel);
 
%% Calculate statistics
% Compute sum of the squares of the data residuals
St = sum(( y - mean(y) ).^2)
 
% Compute sum of the squares of the estimate residuals
SrE = sum(( y - yhatE ).^2)
SrP = sum(( y - yhatP ).^2)
SrS = sum(( y - yhatS ).^2)
 
% Compute the coefficient of determination
r2E = (St - SrE) / St
r2P = (St - SrP) / St
r2S = (St - SrS) / St
 
%% Generate plots
figure(1)
plot(x,      y,      'ko',xmodel, ymodelE, 'k-')
title('Metabolism as a Function of Mass(Exponential) (cy111)')'
 xlabel('Mass(kg)')
 ylabel('Metabolism(watt)')
 print -depsc M11


figure(2)
plot(xmodel,log(ymodelE), x,      log(y),      'ko' )
 xlabel('Mass(kg)')
 ylabel('log(Metabolism)')
 title('Linearized Exponential Model (cy111)')
 print -depsc M12

figure(3)
plot(x,      y,      'k-',xmodel, ymodelP, 'k:')
 xlabel('Mass(kg)')
 ylabel('Metabolism(watt)')
 title('Metabolism as a Function of Mass(Power) (cy111)')
 print -depsc M13

figure(4)
plot(log10(xmodel),log10(ymodelP), log10(x),      log10(y),      'ko' )
 xlabel('log10(Mass)')
 ylabel('log10(Metabolism)')
 title('Linearized Power Model (cy111)')
 print -depsc M14

figure(5)
plot(x,      y,      'ko',xmodel, ymodelS, 'k--')
 xlabel('Mass(kg)')
 ylabel('Metabolism(watt)')
 title('Metabolism as a Function of Mass(Saturation) (cy111)')
 print -depsc M15

figure(6)
plot(1./xmodel,1./ymodelS, 1./x,      1./y,      'ko' )
 xlabel('1/Mass(1/kg)')
 ylabel('1/Metabolism(1/watt)')
 title('Linearized Saturation Model (cy111)')
print -depsc M16
 
EstE = yeqnE(MyCoefsE, 200)
EstP = yeqnP(MyCoefsP, 200)
EstS = yeqnS(MyCoefsS, 200)