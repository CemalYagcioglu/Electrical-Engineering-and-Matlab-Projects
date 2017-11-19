%[Roots.m]
%[Cemal Yagcioglu]
%[October 23,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

clear

for EqNo=1:3 %I created 
    for k=1:2%k==1 is for trial to check the limits, k==2 are the real graphs
             
    % Equation written with mask to not write more than once.         
FirstF = @(x) ((EqNo==1).*(20.*exp(-4*x)-36.*exp(-2.*x)+18.*exp(-x)-1))...
    +((EqNo==2).*((x.^5)+100.*cos(2.*x)))...
    +((EqNo==3).*((10./(x-2))-90.*exp(-x./2)));
     
   
X2 = linspace(-100,100,1000);
Y1 = FirstF(X2);
Y2 = sign(Y1);
Rcounter = 0;
%This for loop finds all the guesses.
for i=1:999
    if Y2(i+1)~=Y2(i) %This check if sign changes if it does
                      %it writes down the x value as rootguess
        Rcounter = Rcounter +1;
        rootguess(Rcounter)=(X2(i+1)+X2(i))./2;
    end
end
%uses all the root guesses to find the roots
for rt=1:length(rootguess) 
   [Fxroot(rt), Fyroot(rt)] = fzero(FirstF, rootguess(rt));

end


Allxroots(EqNo,:) = Fxroot(:);
Allyroots(EqNo,:) = Fyroot(:);




xlowlim=(min(Fxroot(:))-8); % limits for k==1 trial graphs
xuplim=(max(Fxroot(:))+8);
XFinal = linspace(xlowlim,xuplim,1000);

YFinal = FirstF(XFinal);
YSignFinal = sign(YFinal);

figure(EqNo+3*(k==1)) %figures to check boundaries are figure 4-5-6

subplot(2,1,1)
plot(XFinal,YFinal)
xlabel('x')
ylabel('f(x)')

ylowlim=min(FirstF(linspace(xlowlim,xuplim,1000)))-10;
yuplim=max(FirstF(linspace(xlowlim,xuplim,1000)))+10;
axis([xlowlim,xuplim,ylowlim,yuplim]) %% this is to adjust the limits of the trial function
% Y4 function is for finding maximum by using minumum calculator
% we take the absolute value and multiply by -1 to make sure
% maxes are now mins (this is true if local max is positive)
Y4 = @(x) -1.*(abs(((EqNo==1).*(20.*exp(-4*x)-36.*exp(-2.*x)+18.*exp(-x)-1))...
    +((EqNo==2).*((x.^5)+100.*cos(2.*x)))...
    +((EqNo==3).*((10./(x-2))-90.*exp(-x./2)))));
%this is true if local max is negative
Y5 = @(x) (abs(((EqNo==1).*(20.*exp(-4*x)-36.*exp(-2.*x)+18.*exp(-x)-1))...
    +((EqNo==2).*((x.^5)+100.*cos(2.*x)))...
    +((EqNo==3).*((10./(x-2))-90.*exp(-x./2)))));
% the following if function corrects the limits for real graphs
if EqNo==1 & k==2
    title('Plot of f(x)=20e^{-4x}-36e^{-2x}+18e^{-x}-1(cy111)')
    axis([(min(Fxroot(:))-1),(max(Fxroot(:))+1),-5,5])
    [Eq1xmin(1),Eq1ymin(1)] = fminbnd(FirstF,0,0.5);
    [Eq1NabsXmax(1),Eq1NabsYmax(1)] = fminbnd(Y4,0.6,1.5);
    Eq1xmax(1)=Eq1NabsXmax(1);
    Eq1ymax(1)=(-1).*Eq1NabsYmax(1);

elseif EqNo==2 & k==2
    title('Plot of f(x)=x^{5}+100cos(2x)(cy111)')
    axis([(min(Fxroot(:))-3),(max(Fxroot(:))+1),-200,200])
    [Eq2xmin(1),Eq2ymin(1)] = fminbnd(FirstF,-2,1);
    [Eq2xmin(2),Eq2ymin(2)] = fminbnd(FirstF,1,2);
    
    [Eq2NabsXmax(1),Eq2NabsYmax(1)] = fminbnd(Y5,-3,-2);
    Eq2xmax(1)=Eq2NabsXmax(1);
    Eq2ymax(1)=-1.*Eq2NabsYmax(1);
    
    [Eq2NabsXmax(2),Eq2NabsYmax(2)] = fminbnd(Y4,-0.5,0.5);
    Eq2xmax(2)=Eq2NabsXmax(2);
    Eq2ymax(2)=(-1).*Eq2NabsYmax(2);
    
elseif EqNo==3 & k==2
    title('Plot of f(x)=10/{x-2}-90e^{-(x/2)},x\neq2(cy111)')
    axis([(min(Fxroot(:))-2.5),(max(Fxroot(:))+1),-200,200])
end

subplot(2,1,2)
plot(XFinal,YSignFinal)
xlabel('x')
ylabel('sign(f(x))')
title('Plot of sign(f(x))')
% the following if function corrects the limits for real graphs
if EqNo==1 & k==2
axis([(min(Fxroot(:))-1),(max(Fxroot(:))+1),-1.2,1.2])
    print -depsc Roots1
elseif EqNo==2 & k==2
    axis([(min(Fxroot(:))-3),(max(Fxroot(:))+1),-1.2,1.2])
    print -depsc Roots2
elseif EqNo==3 & k==2
    axis([(min(Fxroot(:))-2.5),(max(Fxroot(:))+1),-1.2,1.2])
    print -depsc Roots3
end
if k==2
format short e
fprintf('X roots for Equation%0.0f are: %e %e %e\n',EqNo,Fxroot)
end
    end
end
format short e
fprintf('Max x value for Equation 1 is:%e\n',Eq1xmax)
fprintf('Max y value for Equation 1 is:%e\n',Eq1ymax)
fprintf('Min x value for Equation 1 is:%e\n',Eq1xmin)
fprintf('Min y value for Equation 1 is:%e\n',Eq1ymin)
fprintf('Max x values for Equation 2 are:%e %e\n',Eq2xmax)
fprintf('Max y value for Equation 2 are:%e %e\n',Eq2ymax)
fprintf('Min x values for Equation 2 are:%e %e\n',Eq2xmin)
fprintf('Min y value for Equation 2 are:%e %e\n',Eq2ymin)





