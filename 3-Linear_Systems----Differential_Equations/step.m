%% ENGR 315 - Lab 2 - Differential EQ
% Farnam Adelkhani 915815724
%10/2/2016

z = [0.1, 0.2, 0.5, 0.8, 1, 2, 5, 8, 10]
Wo = 10
figure(10)
hold
lz = length(z);
subplot(2, 1, 1)
for n = 1:9
s = tf('s');
t = Wo^2/(s^2 + 2*z(n)*Wo*s + Wo^2);
set(gca, 'NextPlot', 'add');
col = hsv(lz);
impulse(t,0:0.001:5)
legend('\zeta = 0.1', '\zeta = 0.2', '\zeta = 0.5', '\zeta = 0.8',... 
    '\zeta = 1', '\zeta = 2', '\zeta = 5', '\zeta = 8', '\zeta = 10');

end

subplot(2, 1, 2)
for n = 1:9
s = tf('s');
t = Wo^2/(s^2 + 2*z(n)*Wo*s + Wo^2);
set(gca, 'NextPlot', 'add');
col = hsv(lz);
step(t,0:0.001:5)
legend('\zeta = 0.1', '\zeta = 0.2', '\zeta = 0.5', '\zeta = 0.8',... 
    '\zeta = 1', '\zeta = 2', '\zeta = 5', '\zeta = 8', '\zeta = 10');

end
