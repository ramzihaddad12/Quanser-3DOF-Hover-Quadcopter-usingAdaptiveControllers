close all
clear all
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%True values:
% a1=-2;
% a2=1;
% b0=0.125/I;
% b1=0.125/I;
%%%
Pphi_0=100*eye(4);%%%
Ptheta_0=100*eye(4);%%%
Ppsi_0=100*eye(4);%%%

teta_phi_0 = [-1 0.5 3 1];
teta_theta_0 = [-1.5 0.5 2 2];
teta_psi_0 = [-1.5 0.5 1 1];
lambda_1 = 0.9;
%%%a
fs=-1;
Ix=0.0552;
Iy=0.0552;
Iz=0.11;
% Am: zeta=0.7, wn=1
am1=-1.3205;
am2=0.4966;
bm0=0.1761;