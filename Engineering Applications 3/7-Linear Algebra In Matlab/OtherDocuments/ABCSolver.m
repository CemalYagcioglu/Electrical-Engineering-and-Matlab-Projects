%[ABCSolver.m]
%[Cemal Yagcioglu]
%[October 30,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
%First Part of the Palm 8.16(a) - Calculating a b c

clear            
Coeff = [1,1,1;16,4,1;25,5,1]
Output = [4;73;120]
unknowns = inv(Coeff)*Output
