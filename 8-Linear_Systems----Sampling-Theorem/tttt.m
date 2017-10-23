T = 10;
pts = 1:1:256;

c = cos(2*pi*pts/T);
s = sin(2*pi*pts/T);

t = 1:0.01:256;

sys = tf(b,a);
y = lsim(sys, c, t);