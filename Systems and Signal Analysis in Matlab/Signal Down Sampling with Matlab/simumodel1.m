disp(size(x,2))
disp(size(tout,2))
plot(tout, x, 'k-', tout, y, 'k--', tout, z, 'k:');

xlabel('Time (s)');
ylabel('Amplitude');
legend('x', 'y', 'x*y')
title('Two Input Signals and Their Product (CY111)'); 