
clear all
close all

b0=1.1;b1=0.5;b2=0.1;b = [b0 b1 b2]';
u = [0:1:6]';PHI_actual = [ones(7,1) u u.^2];Y_actual=PHI_actual*b;

%n=randn(7,1);
n=[-0.6959   -1.0884   -0.4841   -0.9095   -0.6039   -1.7428   0.2194]';
stdev=std(n);
n_stdev0=n*0/stdev;
n_stdev_pt1=n*0.1/stdev;
n_stdev_pt6=n*0.6/stdev;



%%% model assumed is same form as process: y_model = b0 + b1*u + b2*u^2
PHI_model = PHI_actual;

% measurement noise with standard deviation of 0
n=n_stdev0;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('model form same as process; measurement noise with stdev = 0')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)

% measurement noise with standard deviation of 0.1
n=n_stdev_pt1;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('model form same as process; measurement noise with stdev = 0.1')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)

% measurement noise with standard deviation of 0.6
n=n_stdev_pt6;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('model form same as process; measurement noise with stdev = 0.6')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% model assumed is a different form as process: y_model = b0 + b1*u
PHI_model = [ones(7,1) u];

% measurement noise with standard deviation of 0
n=n_stdev0;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('ymodel = b0 + b1*u; measurement noise with stdev = 0')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)

% measurement noise with standard deviation of 0.1
n=n_stdev_pt1;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('ymodel = b0 + b1*u; measurement noise with stdev = 0.1')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)

% measurement noise with standard deviation of 0.6
n=n_stdev_pt6;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('ymodel = b0 + b1*u; measurement noise with stdev = 0.6')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% model assumed is a different form as process: y_model = b0
PHI_model = [ones(7,1)];

% measurement noise with standard deviation of 0
n=n_stdev0;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('ymodel = b0; measurement noise with stdev = 0')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)

% measurement noise with standard deviation of 0.1
n=n_stdev_pt1;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('ymodel = b0; measurement noise with stdev = 0.1')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)

% measurement noise with standard deviation of 0.6
n=n_stdev_pt6;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('ymodel = b0; measurement noise with stdev = 0.6')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% model assumed is a different form as process: y_model = b0 + b1*u + b2*u^2 + b3*y^3
PHI_model = [ones(7,1) u u.^2 u.^3];

% measurement noise with standard deviation of 0
n=n_stdev0;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('ymodel = b0 + b1*u + b2*u^2 + b3*u^3; measurement noise with stdev = 0')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)

% measurement noise with standard deviation of 0.1
n=n_stdev_pt1;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('ymodel = b0 + b1*u + b2*u^2 + b3*u^; measurement noise with stdev = 0.1')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)

% measurement noise with standard deviation of 0.6
n=n_stdev_pt6;
Y_measured=PHI_actual*b+n;
b_estimated = inv(PHI_model'*PHI_model)*PHI_model'*Y_measured
Y_estimated = PHI_model*b_estimated;
figure,plot(u,Y_actual,'*'),hold on,plot(u,Y_measured,'^'),plot(u,Y_estimated,'.'),legend('actual','measured','estimated'),title('ymodel = b0 + b1*u + b2*u^2 + b3*u^; measurement noise with stdev = 0.6')
squared_error_between_estimated_and_measured_Y = (Y_measured - Y_estimated)'*(Y_measured - Y_estimated);
squared_error_between_estimated_and_actual_Y = (Y_actual - Y_estimated)'*(Y_actual - Y_estimated)