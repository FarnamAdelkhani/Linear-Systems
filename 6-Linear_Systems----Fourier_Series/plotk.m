%% Plotk
function [] = plotk(t0, T, m)

m = -m:1:m;
wo = (2 * pi)/T;
y = 0.5*sinc(m.*((wo*t0)/(2*pi)));
stem(m,y,'fill'); %fill the stems
xlabel('\itk'); %'\it' for italics
ylim([-0.2 0.6]);
%grid on;
end

