function lab7_3
w0 = 10;
zeta = [0.1 0.2 0.5 0.8 1 2 5 8 10];
lz = length(zeta);
b = w0^2;

clf
figure
for i = 1:lz
	a = [1 2*zeta(i)*w0 b];
	impulse(b,a)
    grid on
end
	
figure
for i = 1:lz
	a = [1 2*zeta(i)*w0 b];
	freqde(b,a)
end