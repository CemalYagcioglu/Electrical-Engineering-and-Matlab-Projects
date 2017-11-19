clear regstats XX YY
clc
c=0;
for i=[2,4,5,7]
    for k=[2,4,5,7]
        if i>k
            c=c+1;
YY=log((i==2)*DA+(i==4)*L+...
            (i==5)*Q100+(i==7)*RQ100);
        XX=log((k==2)*DA+(k==4)*L+(k==5)*Q100+(k==7)*RQ100);

stats = regstats(YY, XX, 'linear', ...
{'beta' 'r' 'rsquare' 'adjrsquare' 'tstat'});
beta = stats.beta;
r = stats.r;
rsquare = stats.rsquare;
adjrsquare = stats.adjrsquare;
tstat = stats.tstat.t;
pval = stats.tstat.pval;

DataBeta(c) = beta(end);
DataPval(c) = pval(end);
DataRsquare(c) = adjrsquare;
fprintf(sprintf('i=%0.0f k=%0.0f\n',i,k))
figure(c)
plot(XX,YY)
plotResiduals(fitlm(XX,YY), 'symmetry')
        end
    end
end
DataBeta
DataPval
DataRsquare
fprintf('Independent vs Dependent\n')
fprintf('DAxL DAxQ100 LxQ100 DAxRQ100 LxRQ100 Q100xRQ100')


