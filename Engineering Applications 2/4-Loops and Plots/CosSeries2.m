function [CosApprox,Error]=CosSeries2(x,N)
for k=2:N
    CosApprox(k)=CosApprox(k-1)+((-1).^(k+1)).*(x.^(2.*(k-1))./factorial(2.*(k-1)))
end
CosApprox(1)=1;
Error=(((cos(x)-Approx)./cos(x)).*100)
end
    