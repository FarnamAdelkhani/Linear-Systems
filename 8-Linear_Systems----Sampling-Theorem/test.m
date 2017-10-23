RC = [.1 1 10];

for i = 1:1:3

x = 1./(RC.*i);
figure
impulse(x,[1 x]);
grid on
figure
freqde(x,[1 x]);

end