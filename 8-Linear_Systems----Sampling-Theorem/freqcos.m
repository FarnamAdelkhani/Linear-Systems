function freqcos(b, a)

pt = 2560; % total number of points
t = linspace(0, 2*pi,pt);
w = 10;
c = cos(w.*t);
s = sin(w.*t);

sys = tf(b,a);
y1 = lsim(sys,c,t);
ys = lsim(sys,s,t);

plot(t,c);
hold on
plot(t,y1,'--m','LineWidth',2)
title('Frequency response to linear system');
xlabel('time(s)');
legend('c', 'yc')
grid on
hold off

y = y1;
z1 = mean(y'.*s)
z2 = mean(y'.*c)

z = z1-j*z2
magZ = abs(z);
angleZ = angle(z);

end