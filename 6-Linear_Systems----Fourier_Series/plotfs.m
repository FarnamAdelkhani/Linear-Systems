%% Plotfs
function [] = plotfs(t0,T,m)
% m is M/k
% PLOTFS Fourier synthesis
% plotfs(t0, T, k) plots resynthesis of a pulse function
% of width t0 over analysis interval [-T/2, T/2)
% using the partial sum of m terms

N = m;
wo = (2 * pi)/T;
t = -3:0.01:3; % time limits .. 1msec caused problems
yce = 0.5 * ones(size(t));
for m = 1:2:N,
cn = 0.5 * sinc((wo * m * t0)/(2 * pi));
yce = yce + 2 * real(cn * exp(j * m * wo * t));
end

Rectangle;
hold on;
plot(t,yce,'r', 'LineWidth',2);
grid on;
tle = [' M = ', num2str(N)]; % Set titles in series
title(tle);