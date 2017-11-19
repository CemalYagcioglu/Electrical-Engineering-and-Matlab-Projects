%[ExponentialsGraph.m]
%[Cemal Yagcioglu]
%[October 2,2016]-
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
x = linspace(0,4);

for m=[-0.5,0,0.5,1,2]
    axis([0,4,0,4])
    hold on
    y=x.^m;
    xticks([0 0.5 1 1.5 2 2.5 3 3.5 4])
    plot(x,y,'k')
        
    
end
hold off
 text(2.75,0.4,'\it{m} = -0.5')
 text(3.38,1.2,'\it{m} = 0')
 text(3.3,2.1,'\it{m} = 0.5')
 text(2.75,3.2,'\it{m} = 1')
 text(1.5,3.25,'\it{m} = 2')
 xlabel('\it{x}')
 ylabel('\it{y}')
 title('The Power Function \it{y = x^m} (cy111)')
 
 print -depsc ThePowerFunctionPlot
 
