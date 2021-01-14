close all
clear all


%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%True values:
% a1=-2;
% a2=1;
K1=1; %Guess
K2=1; %Guess
K3=1; %Guess
% b0=0.125*K;
% b1=0.125*K;
%%%
P0_1=100*eye(4);%%%
teta0_1 = [-1.5 0.5 -0.1 -0.1];
lambda_1 = 0.5;
%%%a
fs=-1;
P0_2=100*eye(4);%%%
teta0_2 = [-1.5 0.5 -0.1 -0.1];
lambda_2 = 0.5;
%%%
P0_3=100*eye(4);%%%
teta0_3 = [-1.5 0.5 -0.1 -0.1];
lambda_3 = 0.5;
%%%%%
Ix=0.0552;
Iy=0.0552;
Iz=0.11;
% Am: zeta=0.7, wn=1
am1=-1.3205;
am2=0.4966;
bm0=0.1761;

P0=diag([10000,10000,10000,10000]);
teta0=[-1.5 0.5 -2 -2];
lambda=0.1;
% ISTR
% sim 'untitled'
% sim 'lallous'
% % sim 'ramProb3ISTR'
% 
% % tout=0:0.1:100;
% % ltout = length(tout);
% 
% figure(1)
% % plot(uc_out_1,'r')
% 
% plot(tout,uc_out_1,'r')
% hold on
% plot(tout,y_out_1,'b')
% title('Output tracking performance (ISTR)')
% xlabel('time (s)')
% ylabel('red:command uc    blue:output y')
% 
% figure(2)
% plot(tout,u_out_1)
% title('Control effort u (ISTR)')
% xlabel('time (s)')
% 
% figure(3)
% plot(tout,teta_out_1)
% hold on
% plot([tout(1) tout(ltout)], [-2 -2],'-.')
% plot([tout(1) tout(ltout)], [1 1],'-.')
% plot([tout(1) tout(ltout)], [0.125*K1 0.125*K1],'-.')
% plot([tout(1) tout(ltout)], [0.125*K1 0.125*K1],'-.')
% title('Parameter estimates teta (ISTR)')
% xlabel('time (s)')
% 
% figure(4)
% plot(tout,uc_out_2,'r')
% hold on
% plot(tout,y_out_2,'b')
% title('Output tracking performance (ISTR)')
% xlabel('time (s)')
% ylabel('red:command uc    blue:output y')
% 
% figure(5)
% plot(tout,u_out_2)
% title('Control effort u (ISTR)')
% xlabel('time (s)')
% 
% figure(6)
% plot(tout,teta_out_2)
% hold on
% plot([tout(1) tout(ltout)], [-2 -2],'-.')
% plot([tout(1) tout(ltout)], [1 1],'-.')
% plot([tout(1) tout(ltout)], [0.125*K2 0.125*K2],'-.')
% plot([tout(1) tout(ltout)], [0.125*K2 0.125*K2],'-.')
% title('Parameter estimates teta (ISTR)')
% xlabel('time (s)')
% 
% figure(7)
% plot(tout,uc_out_3,'r')
% hold on
% plot(tout,y_out_3,'b')
% title('Output tracking performance (ISTR)')
% xlabel('time (s)')
% ylabel('red:command uc    blue:output y')
% 
% figure(8)
% plot(tout,u_out_3)
% title('Control effort u (ISTR)')
% xlabel('time (s)')
% 
% figure(9)
% plot(tout,teta_out_3)
% hold on
% plot([tout(1) tout(ltout)], [-2 -2],'-.')
% plot([tout(1) tout(ltout)], [1 1],'-.')
% plot([tout(1) tout(ltout)], [0.125*K3 0.125*K3],'-.')
% plot([tout(1) tout(ltout)], [0.125*K3 0.125*K3],'-.')
% title('Parameter estimates teta (ISTR)')
% xlabel('time (s)')