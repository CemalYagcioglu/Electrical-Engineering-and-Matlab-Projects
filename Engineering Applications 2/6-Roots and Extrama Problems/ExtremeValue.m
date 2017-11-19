%[Roots.m]
%[Cemal Yagcioglu]
%[October 23,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

clear

y=linspace(-4,4,20);
x=linspace(-4,4,20);
[X,Y] = meshgrid(x,y);

fun = (Y.^2).*2-2.25.*X.*Y-1.75.*Y+1.5.*X.^2;
figure(1)
clf
surfc(X,Y,fun)
colormap jet
grid on
xlabel('X')
ylabel('Y')
title('Surface Graph for Equation in Problem 7.23(cy111)')
print -depsc Surface1

fun2 = (4.*X)+(2.*Y)+(X.^2)-(2.*(X.^4))+(2.*X.*Y)-(3.*Y.^2);
figure(2)
clf
surfc(X,Y,fun2)
colormap jet
grid on
xlabel('X')
ylabel('Y')
title('Surface Graph for Equation in Problem 7.24(cy111)')
print -depsc Surface2

fun3 = (-8.*X)+(X.^2)+(12.*Y)+(4.*(Y.^2))-(2.*X.*Y);
figure(3)
clf
colormap jet
surfc(X,Y,fun3)
grid on
xlabel('X')
ylabel('Y')
title('Surface Graph for Equation in Problem 7.25(cy111)')
print -depsc Surface3

fu1 = @(X,Y) (Y.^2).*2-2.25.*X.*Y-1.75.*Y+1.5.*X.^2;
[ MinVec1 , MinVal1] = fminsearch (@( VecD ) fu1( VecD (1) , VecD (2)) , [5 5])

fu2 = @(X,Y) (4.*X)+(2.*Y)+(X.^2)-(2.*(X.^4))+(2.*X.*Y)-(3.*Y.^2);
[ MinVec2 , MinVal2] = fminsearch (@( VecD ) fu2( VecD (1) , VecD (2)).*(-1) , [-2 2])
MinVal2final = abs(MinVal2)

fu3 = @(X,Y) (-8.*X)+(X.^2)+(12.*Y)+(4.*(Y.^2))-(2.*X.*Y); 
[ MinVe3 , MinVal3] = fminsearch (@( VecD ) fu3( VecD (1) , VecD (2)) , [1 1])




