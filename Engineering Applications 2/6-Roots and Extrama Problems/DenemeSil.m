EqNo=1;
%a= (EqNo==1)
%b= (EqNo==2)
%c= (EqNo==3)
FirstF = @(x) ((EqNo==1).*(20.*exp(-4*x)-36.*exp(-2.*x)+18.*exp(-x)-1))...
    +((EqNo==2).*((x.^5)+100.*cos(2.*x)))...
    +0.*((EqNo==3).*((10./(x-2))-90.*exp(-x./2)));
X2 = linspace(-100,100,1000);
Y1 = FirstF(X2);
Y2 = sign(Y1);
plot(X2,Y2)
axis([0,12,-1.2,1.2])

