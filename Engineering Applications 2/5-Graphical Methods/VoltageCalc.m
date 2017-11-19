%[VoltageCalc.m]
%[Cemal Yagcioglu]
%[October 16,2016]
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]
hold off
hold off
Time = linspace(0,4,9)
Voltage = [100,62,38,21,13,7,4,2,3]
subplot(3,1,1)
stem(Time,Voltage)
title('Change of Voltage over Time(cy111)')
xlabel('Time(s)')
ylabel('Voltage(V)')
axis([-0.5,4.5,-10,110])

subplot(3,1,2)
bar(Time,Voltage)
xlabel('Time(s)')
ylabel('Voltage(V)')
axis([-0.5,4.5,-10,110])

subplot(3,1,3)
stairs(Time,Voltage)
xlabel('Time(s)')
ylabel('Voltage(V)')
axis([-0.5,4.5,-10,110])
print -depsc VoltageCalc