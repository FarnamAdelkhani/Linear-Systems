%% Rectangular Function
t = -3:0.01:3;
y = u(t + 0.5) - u(t - 0.5);
plot(t,y)
ylim([-0.5 1.5]);
grid on;