%[Problem3.m]
%[Cemal Yagcioglu]
%[October 30,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

a = [-cosd(30),0,cosd(60),0,0,0;...
    -sind(30),0,-sind(60),0,0,0;...
    cosd(30),1,0,2,0,0;...
    sind(30),0,0,0,2,0;...
    0,-1,cosd(60),0,0,0;...
    0,0,sind(60),0,0,2]

b=[0;2000;0;0;0;0]

Answers=a\b

TrussData = fopen('TrussData.txt', 'w')
fprintf(TrussData, '\n\\begin{tabular}{|c c|}\\hline\n');
fprintf(TrussData, '$F_1$: & %0.3e N\\\\\n', Answers(1))
fprintf(TrussData, '$F_2$: & %0.3e N\\\\\n', Answers(2))
fprintf(TrussData, '$F_3$: & %0.3e N\\\\\n', Answers(3))
fprintf(TrussData, '$H_2$: & %0.3e N\\\\\n', Answers(4))
fprintf(TrussData, '$V_2$: & %0.3e N\\\\\n', Answers(5))
fprintf(TrussData, '$V_3$: & %0.3e N\\\\\\hline\n', Answers(6))
fprintf(TrussData, '\\end{tabular}\n')

fclose(TrussData)

