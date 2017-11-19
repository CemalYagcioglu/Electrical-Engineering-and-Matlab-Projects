%[WaterVelocity.m]
%[Cemal Yagcioglu]
%[October 16,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
S=0.0003
n=0.022
B=linspace(0.1,50,20)
H=linspace(0.1,50,21)
[B,H] = meshgrid(B,H)

U=(sqrt(S)./n).*(B.*H./(B+2.*H)).^(2/3)
surfc(B,H,U)
title('Altering Velocity of Water with Width and Depth(cy111)')
xlabel('Width(m)')
ylabel('Depth(m)')
zlabel('Velocity(m/s)')
grid on
colormap(cool)
colorbar
axis([0,50,0,50,0,6])

print -depsc WaterVelocity
