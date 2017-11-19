%[Problem2.m]
%[Cemal Yagcioglu]
%[October 30,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
clear
format short e

a=[0,-6,5;0,2,7;-4,3,7]
b=[50;-30;50]
InvA=inv(a)
UnknownAns=InvA*b
TransPosA=a'
Norm1=norm(a,1)
Norm2=norm(a)
NormFro=norm(a, 'fro')
NormInf=norm(a,Inf)
