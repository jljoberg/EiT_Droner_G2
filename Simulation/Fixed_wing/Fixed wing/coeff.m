rho = 1.2682;   % [kg/m3]   air density
c   = 0.18994;  % [m]       mean chord of wing
S   = 0.55;     % [m]       area of wing

m  = 13.5;      %[kg]
Jy = 1.135;     %[kg*m2]


% ==== SMOOTHING transition function angle of attack ====
M       = 50;
alpha_0 = 0.4712;
sigma = @(alpha) ( 1+exp(-M*(alpha-alpha_0))+exp(M*(alpha+alpha_0)) ) ...
              / ( (1+exp(-M*(alpha-alpha_0)))*(1+exp(M*(alpha+alpha_0))) );

% ==== Coefficients of LIFT and DRAG
C_L0 = 0.28;
C_La = 3.45;
C_Lq = 0;    % Not included in C_L expression
C_Le = -0.36; % elevator controll

C_D0 = 0.03;
C_Da = 0.30;
C_Dp = 0.0437; 
C_Dq = 0;
C_Dr = 0;
C_De = 0;

C_m0 = -0.02338;
C_ma = -0.38;
C_mq = -3.6;
C_me = -0.5;

C_L = @(alpha) (1-sigma(alpha)) * (C_L0 + C_La*alpha) ...
             + sigma(alpha) * 2*sign(alpha)*sin(alpha)^2*cos(alpha);

C_D = @(alpha) C_Dp + (C_L0+C_La*alpha)^2 / pi*e*AR;

C_m = @(alpha) C_m0 + C_ma*alpha;

