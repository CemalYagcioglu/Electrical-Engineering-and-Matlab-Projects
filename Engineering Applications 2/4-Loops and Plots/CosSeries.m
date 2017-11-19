%[CosSeries.m]
%[Cemal Yagcioglu]
%[October 2,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

function [CosineApprox,Error]=CosSeries(x,N)
CosineApprox(1) = 1
for k=2:N %1 is defined, starting from 2
    CosineApprox(k)=CosineApprox(k-1)+(x.^(2.*(k-1)).*((-1).^(k+1))./factorial(2.*(k-1)))
end
CosineApprox(1)=1;
Error=(((cos(x)-CosineApprox)./cos(x)).*100) %calculates error percent
end
    