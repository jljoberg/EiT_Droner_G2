%%

J_quad = 0.2;    % Rotational inertia
d_m_quad = 0.15;  % dist(motor-cm), må endres?
m_quad = 2.5;    % Linear inertia, må endres ?
g = 9.81;

max_sum_force = 80; %Newton

C_Dq_quad = 0.5;
C_Dl_quad = 0.05*2;

quad_max_inclination = 70*deg2rad;

%% Utils
deg2rad = pi/180;
rad2deg = 180/pi;