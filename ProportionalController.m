%% parameters
K_AMP = 3;
% Amplifier Maximum Output Voltage (V)
VMAX_AMP = 24;
V_bias=2
% Digital-to-Analog Maximum Voltage (V): set to 10 for Q4/Q8 cards
VMAX_DAC = 10;
%
% Specifications of a second-order low-pass filter
wcf = 2 * pi * 20; % filter cutting frequency
zetaf = 0.6;        % filter damping ratio
%
% Maximum Rate of Desired Position (rad/s)
% Note: This is for both the program and joystick commands.
CMD_RATE_LIMIT = 60 * pi/180; % 60 deg/s converted to rad/s
%
Kt=0.0036;
Kf=0.1188;
L=0.197;
Jp=0.0552;
Jr=0.0552;
Jy=0.11;

PO = 10; %10; %5;     % max overshoot
Ts = 1; %1; %0.8;   % settling time

%% original system

% A=[0,0,0,1,0,0;0,0,0,0,1,0;0,0,0,0,0,1;0,0,0,0,0,0;0,0,0,0,0,0;0,0,0,0,0,0];
% 
% B=[0,0,0,0;0,0,0,0;0,0,0,0;-(Kt/Jy),-(Kt/Jy),(Kt/Jy),(Kt/Jy);...
%     (Kf*L/Jp),-(Kf*L/Jp),0,0;0,0,(Kf*L/Jr),-(Kf*L/Jr)];
% 
% C=[1,0,0,0,0,0;0,1,0,0,0,0;0,0,1,0,0,0];
% 
% D=[0,0,0,0;0,0,0,0;0,0,0,0];

Ix=0.0552;
Iy=0.0552;
Iz=0.11;

A=[0,1,0,0,0,0;0,0,0,0,0,0;0,0,0,1,0,0;0,0,0,0,0,0;0,0,0,0,0,1;0,0,0,0,0,0];

B=[0,0,0;(1/Ix),0,0;0,0,0;0,(1/Iy),0;0,0,0;0,0,(1/Iz)];

C=[1,0,0,0,0,0;0,1,0,0,0,0;0,0,1,0,0,0];


D=[0,0,0;0,0,0;0,0,0];


%% A,B,C,D for each decoupled state (x3)

% pitch
Ap = [0,1;0,0];
Bp = [0,0,0;(1/Ix),0,0];
Cp = [1,0];
Dp = [0,0,0];

% roll
Ar = Ap;
Br = [0,0,0;0,(1/Iy),0];
Cr = Cp;
Dr = Dp;

% yaw
Ay = Ap;
By = [0,0,0;0,0,(1/Iz)];
Cy = Cp;
Dy = Dp;

%% desired poles

[zeta,wn] = SecondOrderResponse(PO,Ts);
SP1 = -zeta*wn+j*wn*sqrt(1-zeta^2);
SP2 = -zeta*wn-j*wn*sqrt(1-zeta^2);



Kp = place(Ap,Bp,[SP1 SP2])
Kr = place(Ar,Br,[SP1 SP2])
Ky = place(Ay,By,[SP1 SP2])

%% concatinated gain for MIMO

K = [Ky(:,1),Kp(:,1),Kr(:,1),Ky(:,2),Kp(:,2),Kr(:,2)]

