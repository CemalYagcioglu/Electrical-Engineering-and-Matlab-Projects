%[TemperatureDistribution.m]
%[Cemal Yagcioglu]
%[October 16,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
X=linspace(0,1,30);
Y=linspace(0,1,30);
[x,y] = meshgrid(X,Y);
T=80.*exp(-1.*(x-1).^2).*exp(-3.*(y-1).^2)
figure(1)
surfc(X,Y,T)
grid on
bar1 = colorbar;
xlabel(bar1, 'Temperature(Kelvin)')
colormap(hot)
title('Temperature Distribution of Heated Square Metal Plate(cy111)')
xlabel('Distance in x Direction(m)')
ylabel('Distance in y Direction(m)')
zlabel('Temperature(K)')
print -depsc TemperatureDistribution

figure(2)
contour(X,Y,T,8)
grid on
colormap(hot)
title('Temperature Contours of Heated Square Metal Plate(cy111)')
xlabel('Distance in x Direction(m)')
ylabel('Distance in y Direction(m)')
zlabel('Temperature(K)')
print -depsc TemperatureContours

figure(3)
imagesc([0 1], [0 1], T)
colormap(hot)
bar2 = colorbar;
xlabel(bar2, 'Temperature(Kelvin)')
title('Temperature Image with Scaled Colors of Heated Square Metal Plate(cy111)')
xlabel('Distance in x Direction(m)')
ylabel('Distance in y Direction(m)')
T00=80*exp(-1)*exp(-3)
print -depsc TemperatureImage
%Ans = 1.4653 Kelvin
