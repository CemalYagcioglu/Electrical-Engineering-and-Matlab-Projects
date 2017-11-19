
  %delete('MyTemps.tex')
Temp = [];
i=1;
Max=0;
Min=999999;
AvTemp=0;
while i<99999999
    FID = fopen('MyTemps.txt', 'w');
    TempInput2 ='%4.2f';
    fprintf(FID,TempInput2,Temp);
     Temp(i) = input('Enter a Temperature: ');
     T=Temp(i);
    if T >= 0
    OldTemp = Temp;
    AvTemp = ((AvTemp*(i-1))+T)/(i);
    if T > Max
        Max = T;
    end
    if T < Min
        Min = T;
    end
TempInput ='Enter a Temperature:  %4.2f\n';
fprintf(TempInput,T);
fprintf('Readings Minimum Average Maximum\n');
formatSpec = '       %0.0f  %4.2f  %4.2f  %4.2f\n';
fprintf(formatSpec,i,Min,AvTemp,Max);
    else
%TempInput ='Enter a Temperature:  %4.2f\n';
%fprintf(TempInput,Temp);
        i=i+1000000000;
    end
    i=i+1;
    fprintf(FID, '\n');
    
    

    
end
save MyTemps.txt Temp -ascii  