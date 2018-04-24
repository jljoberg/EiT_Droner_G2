
% REMEMBER: Time is not linear!! Fix somehow

close all;

p = pos.Data;
t = pos.Time;
th = theta.Data;

figure; hold on;


h0 =  animatedline();

for i = 1:size(t,1)
    h1 = plot(p(i,1),-p(i,2), 'b*');
    axis([-2000 2000 -2000 2000])
    pause(0.002); delete(h1)
    
end
