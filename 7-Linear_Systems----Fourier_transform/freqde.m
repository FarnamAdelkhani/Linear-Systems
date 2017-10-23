function freqde(b, a)
% FREQDE Frequency response of linear system
% based on solution of differential equation

numerator = b;
denominator = a;
sp = logspace(-1,2,50);          %Generate logarithmically spaced vector
sys = tf(numerator,denominator)  %Transfer Function
bode(sys,sp)                     %Frequ response of sys and sp

end