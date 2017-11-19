%[Roots.m]
%[Cemal Yagcioglu]
%[October 23,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

clear

r=2 %m
L=5 %m
V = @(h) (2.^2*acos((2-h)./2)-(2-h).*sqrt(2.*2.*h-h.^2)).*5

h=linspace(0,4,100)



for i=1:6
    fun = @(h) (V(h)-10.*i);
    Y2(i)=fzero(fun,2)
end

%fun = @(h) (V(h,r,L));
%fplot(fun)