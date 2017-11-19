
%2
phat = 0.72;
p0=0.5;
n = 2529;
x = (phat - p0)/sqrt(p0*(1-p0)/n);
[h,p,ci,zval] = ztest(x, 0, 1, 0.05, 'right');


phat = 0.72;
p0=0.5;
n = 50;
x = (phat - p0)/sqrt(p0*(1-p0)/n);
[h,p,ci,zval] = ztest(x, 0, 1, 0.05, 'right');



n = [10 50 100 500 1000 5000];
pvals = zeros(1, length(n));
for i=1:length(n)
  x = (phat - p0)/sqrt(p0*(1-p0)/n(i));
  [h,p,ci,zval] = ztest(x, 0, 1, 0.05, 'right');
  pvals(i) = p;
end

n = 50;
zz = 1.65*sqrt(0.5*(1-0.5)/n)/sqrt(0.55*(1-0.55)/n)...
    - (0.55 - 0.5)/sqrt(0.55*(1-0.55)/n);


pow = 1 - normcdf(zz);










