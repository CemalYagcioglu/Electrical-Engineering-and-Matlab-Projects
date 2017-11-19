%[Temperatures.m]
%[Cemal Yagcioglu]
%[October 30,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
clear
TemperatureMatrix = [3,-1,-1,0;...
               -1,2,0,-1;...
               -1,0,2,-1;...
               0,-1,-1,3]
Ta=150;
Tb=20;
Outputs = [Ta;0;0;Tb]
UnknownMat=inv(TemperatureMatrix)*Outputs
TempData = fopen('TempData.txt','w')
fprintf(TempData, '\n\\begin{tabular}{|c|}\\hline \n')
for i=1:4
    fprintf(TempData,'T%0.0f:  %0.3e C\\\\\n', i, UnknownMat(i))
end
fprint(TempData,'\\hline\n')
fprintf(TempData, '\\end{tabular}\n')
fclose(TempData)

