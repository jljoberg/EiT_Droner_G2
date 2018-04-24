% REMEMBER: Time is not linear!! Fix somehow
% Fixed temporarily
close all;
dec = 10;    % Reduce samples

%% Load data
p = pos.Data;
p(:,2) = - p(:,2);
t = pos.Time;
th = theta.Data;

p_t = target.Data;
p_t(:,2) = -p_t(:,2);

p_q = pos_quad.Data;
p_q(:,2) = -p_q(:,2);

%%
figure; hold on;

h_p =  animatedline();
h_t = animatedline(); h_t.Color='g';
h_q = animatedline(); h_q.Color='m';

for i = 1:dec:size(t,1)
    addpoints(h_p, p(i,1), p(i,2));
    addpoints(h_t, p_t(i,1), p_t(i,2));
    addpoints(h_q, p_q(i,1), p_q(i,2));
    h1 = plot(p(i,1),p(i,2), 'b^');
    h2 = plot(p_t(i,1),p_t(i,2), 'rs');
    h3 = plot(p_q(i,1),p_q(i,2), 'go');
    axis([-10 80 -10 80])
    pause(0.00001); delete([h1 h2 h3])
    
end

%% Quad vs target error 
error = zeros(size(p_q,1),1);
for i =1:size(error,1)
    error(i) = norm(p_q(i,:)-p_t(i,:));
end
figure; hold on
plot(t,error); grid on;

    

