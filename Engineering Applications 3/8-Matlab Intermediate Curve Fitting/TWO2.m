%[TWO2.m]
%[Cemal Yagcioglu]
%[November 18,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

clear
format short e
x=1:1:10
y=[10 14 16 18 19 20 21 22 23 23]
lnx=log(x)
p1=polyfit(lnx,y,1)
y1=polyval(p1,lnx)
x1=log(2.5)
x2=log(11)
est=polyval(p1,[x1 x2])

St = sum(( y - mean(y) ).^2)

% Compute sum of the squares of the estimate residuals
Sr = sum(( y - y1 ).^2)


% Compute the coefficient of determination
r2 = (St - Sr) / St
