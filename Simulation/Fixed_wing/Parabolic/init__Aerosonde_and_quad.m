%% Init coefficients
coeff_Aerosonde;
coeff_quad;

%% Aerosonde init
AS_init_speed = 30;
AS_init_attitude = 75*deg2rad;
AS_init_incidence = 2*deg2rad;
AS_init_rot_rate = 0*deg2rad;
AS_init_pos = [0 0];

%% Quad init
AS_vzw0 = AS_init_speed*sin(AS_init_attitude);
dist_z = 1/2*AS_vzw0^2/g;   % Init target
dist_z = norm(dist_z);

quad_init_theta = -20*deg2rad;
quad_init_x     = -8; 
quad_init_z     = -dist_z-2;    %-20;
quad_init_vx    = 15;
quad_init_vz    = 0;