
% REMEMBER: Time is not linear!! Fix somehow
% Fixed temporarily
close all;
dec = 4;    % Reduce samples

p = pos.Data;
p(:,2) = - p(:,2);
t = pos.Time;
th = theta.Data;

p_t = target.Data;
p_t(:,2) = -p_t(:,2);


figure; hold on;


h_p =  animatedline();
h_t = animatedline(); h_t.Color='g';

for i = 1:dec:size(t,1)
    addpoints(h_p, p(i,1), p(i,2));
    addpoints(h_t, p_t(i,1), p_t(i,2));
    h1 = plot(p(i,1),p(i,2), 'b^');
    h2 = plot(p_t(i,1),p_t(i,2), 'rs');
    axis([-5 50 -5 50])
    pause(0.002); delete([h1 h2])
    
end
