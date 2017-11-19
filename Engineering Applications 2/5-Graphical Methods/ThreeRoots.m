%[ThreeRoots.m]
%[Cemal Yagcioglu]
%[October 16,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
%axis koy
x=linspace(-5,5,1000)
y=x.^3-3.*x.^2+5.*x.*sin(pi.*x./4-5.*pi./4)+3

figure
subplot(2,2,1)
plot(x,y)
xlabel('x')
ylabel('y')
title('y vs x plot(cy111)')
grid on
hold on

y2=sign(y)
subplot(2,2,3)
plot(x,y2)
axis([-5,5,-1.1,1.1])
xlabel('x')
ylabel('sign of y')
title('sign of y vs x plot')
grid on
hold on

subplot(3,2,2) 
root1x=linspace(-0.484,-0.474,1000)
x=root1x
y2=(x.^3-3.*x.^2+5.*x.*sin(pi.*x./4-5.*pi./4)+3)
plot(root1x,y2)
axis([-0.484,-0.474,-0.05,0.05])
xlabel('x')
ylabel('y')
title('First root : -0.479')
grid on

subplot(3,2,4)
root2x=linspace(1.1295,1.1395,1000)
x=root2x
y3=(x.^3-3.*x.^2+5.*x.*sin(pi.*x./4-5.*pi./4)+3)
plot(root2x,y3)
axis([1.1295,1.1395,-0.05,0.05])
xlabel('x')
ylabel('y')
title('Second root : 1.135')
grid on

subplot(3,2,6)
root3x=linspace(3.827,3.837,1000)
x=root3x
y4=(x.^3-3.*x.^2+5.*x.*sin(pi.*x./4-5.*pi./4)+3)
plot(root3x,y4)
axis([3.827,3.837,-0.05,0.05])
grid on
xlabel('x')
ylabel('y')
title('Third root : 3.832')
orient tall
print -depsc ThreeRoots
%-0.48000
%1.13400
%3.83200
%y



