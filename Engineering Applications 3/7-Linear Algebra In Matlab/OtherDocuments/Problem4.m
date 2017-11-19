A = [1,-5,-2;6,3,1;7,3,-5]

c=linspace(-10,10,201)

for k=1:length(c)
    b=[11.*c(k);13.*c(k);10.*c(k)]
    MyVals=A\b
    x(k)=MyVals(1)
    y(k)=MyVals(2)
    z(k)=MyVals(3)
    
end
figure(1);clf
plot(c,x,'b-',c,y,'r-',c,z,'k-')
title('The Solution for Palm Problem 8.5(b), p.359(cy111)')
xlabel('values of c')
ylabel('x,y,z answers')
legend('x','y','z','Location','northwest')

print -depsc Problem4
