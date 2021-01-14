% Desired response
Am1 = 1 - 1.3205 + 0.4966;
%%%%%%%%%%%%%
am1 = -1.3205;
am2 = 0.4966;
bm0 = 0.1761;

% Initial Conditions
theta_init = [.4,.3,.1,-.4]';
P_0 = eye(4,4) * 100;

% Variable setup 
Ts = 0.5;
lambda = 0.98;

a = sim('dstr_algorithm','SimulationMode','normal');

% Obtaining simulation data
theta = a.simout.Data;
output = a.simout1.Data;
u = a.simout2.Data;

% The true values of theta
theta_0 = [0.1065*ones(1,length(theta))' 0.0902*ones(1,length(theta))' 1.1099*ones(1,length(theta))' -0.6065*ones(1,length(theta))'];

% Plotting results
plot(a.tout, [0 0 0 0; 0 0 0 0; theta]); xlabel('Time (sec)'); 
hold on; 
plot(a.tout,[0 0 0 0; 0 0 0 0; theta_0], '--'); xlabel('Time (sec)'); 
legend('$\hat{\theta}(1)$', '$\hat{\theta}(2)$', '$\hat{\theta}(3)$', '$\hat{\theta}(4)$', ...
    '$\theta^0(1)$', '$\theta^0(2)$', '$\theta^0(3)$', '$\theta^0(4)$', 'interpreter', 'latex')
title('Parameter Estimates $\hat{\theta}$', 'interpreter', 'latex');

figure;
plot(a.tout,[0 0; 0 0; output]);  xlabel('Time (sec)'); 
legend('$y(t)$', '$u_c(t)$', 'interpreter', 'latex');
title('Process Output');

figure;
plot(a.tout,[0;0;u(:,1)]); xlabel('Time (sec)'); title('Control Signal With Disturbance u(t)+v(t)', 'interpreter', 'latex');
ylim([-10 10]);
