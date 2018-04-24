J_quad = 0.2;    % Rotational inertia
d_m_quad = 0.15;  % må endres 
m_quad = 2.5;    % Linear inertia, må endres 
g = 9.81;

max_sum_force = 60; %Newton

C_Dq_quad = 0.5;
C_Dl_quad = 0.05;

deg2rad = pi/180;
rad2deg = 180/pi;

quad_init_theta = -20*deg2rad;
quad_init_x     = -8; 
quad_init_z     = -20;
quad_init_vx    = 12;
quad_init_vz    = 0;