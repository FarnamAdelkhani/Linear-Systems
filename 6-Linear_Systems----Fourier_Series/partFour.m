%% Error of the Fourier Series Approximation
% partFour

T = 2;
M = 1000;
xmin = -T/2;
xmax = T/2;
t0 = 1;
X = int(u(t+0.5)-u(t-0.5), t, xmin, xmax);
y = 0;
for m=1:1:M,
a = (abs(0.5*sinc(m.*((wo*t0)/(2*pi)))))^2;
y = y + a;
end
Y = y.*T;
Em = sqrt(X-Y);
plot(m,Em,'r');