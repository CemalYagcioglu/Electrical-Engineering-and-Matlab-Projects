%[Roots.m]
%[Cemal Yagcioglu]
%[October 23,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

clear

% t used to denote theta
% g=9.81
y = @(x,v0,t) ((tand(t).*x)-(9.81.*(x.^(2))./(2.*(v0.^(2))...
.*((cosd(t)).^2)))+0.8);
x=90;
v0=30;
ProjectileCalc = @(t) ((tand(t).*x)-(9.81.*(x.^(2))./(2.*(v0.^(2))...
.*((cosd(t)).^2)))+0.8);

fplot(ProjectileCalc) %to see where the zeros are aproximately
axis([0,90,-7,7])

[t1,y1] = fzero(ProjectileCalc,37)
[t2,y2] = fzero(ProjectileCalc,52)

clear x

t=[t1,t2]

ProjectileCalc2 = @(x) ((tand(t).*x)-(9.81.*(x.^(2))./(2.*(v0.^(2))...
.*((cosd(t)).^2)))+1.8);
fplot(ProjectileCalc2)
axis([-5,95,0,35])
xlabel('X distance(m)')
ylabel('Height from the floor(m)')
legend('theta=37.959','theta=51.532')
title('Projectile Motion(cy111)')
print -depsc ProjectileGraph

