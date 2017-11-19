%[FIVE5.m]
%[Cemal Yagcioglu]
%[November 18,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

clear
format short e
c = [0.5 0.8 1.5 2.5 4]
k = [1.1 2.5 5.3 7.6 8.9]
Divk=1./k
Divc=1./(c.^2)



p1=polyfit(Divc,Divk,1)
y1=polyval(p1,Divc)
x1=1/(2^2)

est=polyval(p1,x1)

St = sum(( k - mean(k) ).^2)

% Compute sum of the squares of the estimate residuals
Sr = sum(( k - y1 ).^2)


% Compute the coefficient of determination
r2 = (St - Sr) / St
kmax = 1/p1(2)
cs = p1(2)*kmax
