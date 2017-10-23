function lab7_3_2
zeta = 10;
w0 = [0.1 1 10];
lz = length(zeta);
b = w0.^2;

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