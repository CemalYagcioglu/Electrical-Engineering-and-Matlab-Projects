function [fx, ea, iter] = DivAvg(a, es, maxit)
% DivAvg  Use Divide and Average to find square root
%   [fx, ea, iter] = DivAvg(a, es, maxit)
%     a: number of which to take the square root
%     es: stopping error
%     maxit: maximum number of iterations
%     fx: approximation of square root of a
%     ea: approximate relative error (%)
%     iter: number of iterations
% Based on IterMeth.m from Figure 4.2 on p. 94 of 
% Applied Numerical Methods with MATLAB for 
% Scientists and Engineers
% Steven C. Chapra, 3rd Edition

%[DivAvg.m]
%[Cemal Yagcioglu]
%[October 2,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

%% defaults:
if nargin<2||isempty(es),es=0.0001;end
if nargin<3||isempty(maxit),maxit=50;end
%% initialization
iter = 1; sol = 1; ea = 100;
%% iterative calculation
while (1)
solold = sol;
sol = (sol + a./(sol))/(2);
iter = iter + 1;
if sol~=0
ea=abs((sol - solold)/sol)*100; end
if ea<=es || iter>=maxit,break,end 
end
fx = sol; 









end