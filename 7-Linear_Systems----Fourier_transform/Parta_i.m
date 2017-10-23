%% ENGR 315 - Lab 6 - Fourier Transform
% Farnam Adelkhani 915815724
%11/17/2016
%% Part a -- i

RC = [0.1 1 10];

for y = 1:1:3

x = 1./(RC.*y);

figure
impulse(x,[1 x]); % impulse response
grid on;
figure
freqde(x,[1 x]);  % frequency response
grid on;

end

% It seems the slope of the frequency response is roughly equal to the...
% ... rise-time of the impulse response.