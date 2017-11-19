%[ElectricPotential.m]
%[Cemal Yagcioglu]
%[October 16,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
hold off
X=linspace(-0.25,0.25,50)
Y=linspace(-0.25,0.25,50)
[x,y] = meshgrid(X,Y)
E= 8.854*(10^-12)
q1 = 2*10^(-10) %C
q2 = 4*10^(-10)
r1=sqrt((-0.3+x).^2+(y.^2))
r2=sqrt((+0.3+x).^2+(y.^2))
V = (1./(4.*pi.*E)).*((q1./r1)+(q2./r2));

figure(1)
surfc(x,y,V)
colormap(autumn)
xlabel('x Location(m)')
ylabel('y Location(m)')
zlabel('Voltage(V)')
title('Electric Potential Distribution Surface(cy111)')
print -depsc ElectricPotentialSurface

figure(2)
meshc(x,y,V)
colormap(autumn)
xlabel('x Location(m)')
ylabel('y Location(m)')
zlabel('Voltage(V)')
title('Electric Potential Distribution Mesh(cy111)')
print -depsc ElectricPotentialMesh
