close all
clear all

case_setup =1;    
if case_setup==1    
    Wn = 10; zeta = 0.7;   K=1;
    noise_power = [0.000000001]*0;
    P_init = eye(3,3).*1;
elseif case_setup ==2 %Plus NOISE
    Wn = 10; zeta = 0.7;   K=1;
    noise_power = [0.000000001]*1;
    P_init = eye(3,3).*0.1;
elseif case_setup ==3 %Plus Noise, Different P_init
    Wn = 10; zeta = 0.7;   K=1;
    noise_power = [0.000000001]*1;
    P_init = eye(3,3).*0.01;
end

a = 2*zeta*Wn; b = Wn^2; c=K*Wn^2;
a=0;
b=18.1159;
Wn_filt = 100*Wn;
Ts = (1/Wn_filt)/100; 

TF_filt_1st_der = tf([1 0],conv([1/Wn_filt 1],conv([1/Wn_filt 1],[1/Wn_filt 1])));
TF_filt_2nd_der = tf([1 0 0],conv([1/Wn_filt 1],conv([1/Wn_filt 1],[1/Wn_filt 1])));
%figure,bode(TF_filt_1st_der),hold on,bode(TF_filt_2nd_der)

% sim('RLS_demo')