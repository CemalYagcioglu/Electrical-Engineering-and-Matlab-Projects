
clear
phat = 0.72;
p0=0.5;
n = 2529;
x = (phat - p0)/sqrt(p0*(1-p0)/n);
[h,p,ci,zval] = ztest(x, 0, 1, 0.05, 'right');