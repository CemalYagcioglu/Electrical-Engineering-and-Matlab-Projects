%[ABCsolver.m]
%[Cemal Yagcioglu]
%[October 30,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
%clear
%Coeff = [1,1,1;16,4,1;25,5,1]
%Output = [4;73;120]
%unknowns = inv(Coeff)*Output

function [a,b,c] = findquad(x,y,flag)
hold off
if nargin<2
    error('Not enough input arguments!')
elseif nargin==2
    flag=0
end
for i=1:3
CoeffMat(i,:) = [x(i).^2,x(i),1];
end
if cond(CoeffMat)>10^5
    error('Matrix is ill conditioned!')
else
    vectorY=y';
    abc=inv(CoeffMat)*vectorY;
    a=abc(1);
    b=abc(2);
    c=abc(3);
    fprintf('a:%0.2e, b:%0.2e, c:%0.2e', a,b,c)
    if flag==1
         ExtRange=(max(x)-min(x)).*0.1;
         X = linspace(min(x)-ExtRange,max(x)+ExtRange,100);
         Y=a.*X.^2+b.*X+c;
         plot(X,Y)
         grid on
         title(sprintf('Graph of y=%0.2ex^2%+0.2ex%+0.2e', a , b , c ))
         hold on
         plot(x,y,'-s','MarkerSize',12,'LineWidth',3,...
             'MarkerFaceColor','g','MarkerEdgeColor','b')
         xlabel('x')
         ylabel('y')
    end
        
end
end
    
    