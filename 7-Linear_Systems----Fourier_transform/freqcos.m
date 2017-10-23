
function freqcos(b, a)
% FREQCOS Frequency response of linear system
% based on measurement of response to cosine

totalPoints = 2560;
t = linspace(0, 2*pi, totalPoints);
omega = 10;
c = cos(omega.*t);
s = sin(omega.*t);

sys = tf(b,a);     % sys by means of tf function
yc = lsim(sys,c,t); % Response of y to cos
ys = lsim(sys,s,t);

plot(t,c,'--');
hold on
plot(t,yc,':','LineWidth',2)
xlabel('time(s)');
legend('cos', 'ycos');
grid on;
hold off

y = yc;
z1 = mean(y'.*s) % mean of the product of y and sine or cos
z2 = mean(y'.*c)

z = z1 - j*z2
magZ = abs(z);
angleZ = angle(z);

end