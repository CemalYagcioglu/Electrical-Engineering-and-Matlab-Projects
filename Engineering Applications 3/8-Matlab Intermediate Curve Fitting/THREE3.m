%[THREE3.m]
%[Cemal Yagcioglu]
%[November 18,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

clear
format short e
x=1:1:5
y=[2.2 2.8 3.6 4.5 5.5]
p1=polyfit(x,y,1)
y1=polyval(p1,x)
x1=1.5
x2=4.5
est=polyval(p1,[x1 x2])

St = sum(( y - mean(y) ).^2)

% Compute sum of the squares of the estimate residuals
Sr = sum(( y - y1 ).^2)


% Compute the coefficient of determination
r2 = (St - Sr) / St
