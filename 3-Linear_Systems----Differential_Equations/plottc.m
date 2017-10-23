%% ENGR 315 - Lab 2 - Differential EQ
% Farnam Adelkhani 915815724
%10/2/2016

z = [0:0.1:5]
Wo = 10
figure(10)
hold
lz = length(z);

for n = 1:9
s = tf('s');
t = Wo^2/(s^2 + 2*z(n)*Wo*s + Wo^2);
set(gca, 'NextPlot', 'add');
col = hsv(lz);
step(tf(t),5)
stepinfo(step(tf(t),5)) %I used the step info command to find the...
        % rise-time for each scenario
end