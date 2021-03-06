% [ONE.m]
% [Cemal Yagcioglu]
% [November 20,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

clear
% V data
v = 20:10:70;
% d data
d = [45 80 130 185 250 330];
plot(v,d,'ko')
hold on
% Linear  a
x=linspace(20,70,100)
p1 = polyfit(v,d,1);
y1=polyval(p1,x)
y11=polyval(p1,v)
plot(x,y1,'b-')
est1=polyval(p1,[65 100])
hold on

% Quadratic  a
p2 = polyfit(v,d,2);
y2=polyval(p2,x)
y22=polyval(p2,v)
plot(x,y2,'r--')
est2=polyval(p2,[65 100])
hold on
% Cubic  a
p3 = polyfit(v,d,3);
y3=polyval(p3,x)
y33=polyval(p3,v)
plot(x,y3,'c-.')
legend('data points','linear','quadratic','cubic','location','northwest')
xlabel('v (mi/hr)')
ylabel('d (ft)')
title('Distance vs Velocity Plot(cy111)')
print -depsc DistanceVelocityPlot
est3=polyval(p3,[65 100])
St = sum(( d - mean(d) ).^2)

% Compute sum of the squares of the estimate residuals
Sr1 = sum(( d - y11 ).^2)
Sr2 = sum(( d - y22 ).^2)
Sr3 = sum(( d - y33 ).^2)

% Compute the coefficient of determination
r21 = (St - Sr1) / St
r22 = (St - Sr2) / St
r23 = (St - Sr3) / St