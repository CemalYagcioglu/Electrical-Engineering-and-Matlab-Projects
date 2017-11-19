%% Initialize the workspace
clear; format short e
figure(1); clf

%% Load and manipulate the data
Mass=[400 70 45 2 0.3 0.16]
Metabolism=[270 82 50 4.8 1.45 0.97]

%% Rename and create model data
x = Mass'
y = Metabolism'
xmodel = linspace(min(x), max(x), 100);

        yeqnE = @(coefs, x) coefs(1).*exp(coefs(2).*x);
        InitGuessE = [5.3509 0.01138]
        
        yeqnP = @(coefs, x) coefs(1).*x.^coefs(2);
        InitGuessP = [3.3893 0.72656]
        
        yeqnS = @(coefs, x) coefs(1).*x./(coefs(2)+x);
        InitGuessS = [21.011 3.4857]

%% Determine the function coefficients
fSSRE = @(coefs, x, y) sum(( y - yeqnE(coefs, x) ).^2)
[MyCoefsE, SrE] = fminsearch(@(MyCoefsDummy) fSSRE(MyCoefsDummy, x, y), InitGuessE)

fSSRP = @(coefs, x, y) sum(( y - yeqnP(coefs, x) ).^2)
[MyCoefsP, SrP] = fminsearch(@(MyCoefsDummy) fSSRP(MyCoefsDummy, x, y), InitGuessP)

fSSRS = @(coefs, x, y) sum(( y - yeqnS(coefs, x) ).^2)
[MyCoefsS, SrS] = fminsearch(@(MyCoefsDummy) fSSRS(MyCoefsDummy, x, y), InitGuessS)

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
title('Nonlinear Metabolism as a Function of Mass(Exponential) (cy111)')'
 xlabel('Mass(kg)')
 ylabel('Metabolism(watt)')


figure(2)
plot(xmodel,log(ymodelE), x,      log(y),      'ko' )
 xlabel('Mass(kg)')
 ylabel('log(Metabolism)')
 title('Nonlinear Transformation Linearized Exponential Model (cy111)')

figure(3)
plot(x,      y,      'k-',xmodel, ymodelP, 'k:')
 xlabel('Mass(kg)')
 ylabel('Metabolism(watt)')
 title('Nonlinear Metabolism as a Function of Mass(Power) (cy111)')

figure(4)
plot(log10(xmodel),log10(ymodelP), log10(x),      log10(y),      'ko' )
 xlabel('log10(Mass)')
 ylabel('log10(Metabolism)')
 title('Nonlinear Transformation Power Model (cy111)')

figure(5)
plot(x,      y,      'ko',xmodel, ymodelS, 'k--')
 xlabel('Mass(kg)')
 ylabel('Metabolism(watt)')
 title('Nonlinear Metabolism as a Function of Mass(Saturation) (cy111)')

figure(6)
plot(1./xmodel,1./ymodelS, 1./x,      1./y,      'ko' )
 xlabel('1/Mass(1/kg)')
 ylabel('1/Metabolism(1/watt)')
 title('Nonlinear Transformation Saturation Model (cy111)')

 
EstE = yeqnE(MyCoefsE, 200)
EstP = yeqnP(MyCoefsP, 200)
EstS = yeqnS(MyCoefsS, 200)