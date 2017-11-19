 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [cy111]

function [CosApprox,RelError]=CosSeries(x,N)
%N=NTerms
%x=MyAngle
    for i=1:N
        b=i.*2;
        
a=(b-2);
CosApproxSingles=(((x.^a)./factorial(a))*((-1).^(i+1)));
   if i==1
       CosApprox=CosApproxSingles
    else
     CosApprox=CosApprox+CosApproxSingles
   end
    RelError=((100).*((cos(x)-CosApprox)./cos(x)))
    
    
    end
%end
    



%1 - x^2/2! 

%x^(2N-1)/(2N-1)!
