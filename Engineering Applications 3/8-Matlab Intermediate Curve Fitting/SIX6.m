
clear
load('DOCtable.mat')

%% Initialize the workspace
format short e
figure(1); clf

%%% Create data set - this takes the place of loading the set 
%%% for this demonstration; otherwise, the end of this step
%%% should have x1m, x2m, and ym defined as matrices
%[x1m, x2m] = meshgrid(0:.1:1, 0:.15:3);
%T , c
%ym - OC 

%% Rename and create vectors and model data
x1v = T(:);
x2v = c(:);
yv  = OC(:);
[x1model, x2model] = meshgrid(...
    linspace(min(x1v), max(x1v), 19),...
    linspace(min(x2v), max(x2v), 17));

%% Define model equation and A matrix

        yeqn = @(coefs, x1e, x2e) coefs(1)*x2e.^1 + coefs(2)*x1e.^3 + coefs(3)*x1e.^2 + coefs(4)*x1e.^1 + coefs(5)*x1e.^0;
        A    =                            [x2v.^1            x1v.^3            x1v.^2  x1v.^1    x1v.^0 ];
 

%% Determine the function coefficients
MyCoefs = A\yv

%% Generate estimates and model
yhat   = yeqn(MyCoefs, x1v, x2v);
ymodel = yeqn(MyCoefs, x1model, x2model);
        
%% Calculate statistics
St = sum((yv - mean(yv)).^2)
Sr = sum((yv - yhat).^2)
r2 = (St - Sr) / St

%% Generate plots

%figure(1); clf
%surfc(T, c, OC);
%xlabel('x1'); ylabel('x2'); zlabel('y Data')
%view(145, 15)
% Model data
figure(2)
surfc(x1model, x2model, ymodel)
title('Oxygen Concentration in Water
xlabel('T values(°C)'); ylabel('c values(g/L)'); zlabel('OC values(mg/L)')
view(145, 15)
colormap autumn
Test=12
cest=15
est = yeqn(MyCoefs, Test, cest)