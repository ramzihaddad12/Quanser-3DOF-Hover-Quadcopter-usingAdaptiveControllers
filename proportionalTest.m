clear all

K = [2.5273 0.4416 0 0 0 0;
     0 0 2.5273 0.4416 0 0;
     0 0 0 0 5.0363   0.88];


% Ix = 0.0552;
% Iy = 0.0552;
% Iz = 0.1104;

Ix = 0.0235;
Iy = 0.0494;
Iz = 0.6121;

out=sim ('Quanser_Simulation2.slx')

figure(1)
hold on 
plot(angle1)
plot(uc1)
xlabel('time (seconds)')
ylabel('amplitude (deg)')
legend('Output Pitch','Command signal u_c')
title('Command signal vs Output Pitch')

figure(2)
hold on 
plot(angle2)
plot(uc2)
xlabel('time (seconds)')
ylabel('amplitude (deg)')
legend('Output Roll','Command signal u_c')
title('Command signal vs Output Roll')

figure(3)
hold on 
plot(angle3)
plot(uc3)
xlabel('time (seconds)')
ylabel('amplitude (deg)')
legend('Output Yaw','Command signal u_c')
title('Command signal vs Output Yaw')

figure (4)
plot(error1)
xlabel('time (seconds)')
ylabel('amplitude (deg)')
legend('Pitch Error')
title('Pitch Error vs time')


figure (5)
plot(error2)
xlabel('time (seconds)')
ylabel('amplitude (deg)')
legend('Roll Error')
title('Roll Error vs time')

figure (6)
plot(error3)
xlabel('time (seconds)')
ylabel('amplitude (deg)')
legend('Yaw Error')
title('Yaw Error vs time')

figure (7)
plot(input1)
xlabel('time (seconds)')
ylabel('amplitude (N.m)')
legend('Pitch input')
title('Pitch input vs time')

figure (8)
plot(input2)
xlabel('time (seconds)')
ylabel('amplitude (N.m)')
legend('Roll input')
title('Roll input vs time')

figure (9)
plot(input3)
xlabel('time (seconds)')
ylabel('amplitude (N.m)')
legend('Yaw input')
title('Yaw input vs time')
