function freqde(b, a)
% FREQDE Frequency response of linear system
% based on solution of differential equation

num = b;
den = a;
sp = logspace(-1,2,50);
sys = tf(num,den);
bode(sys,sp)
grid on;

end