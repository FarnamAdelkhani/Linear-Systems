%% Orthogonality
% partTwo
N = 16; % let N=16
n = 1:N;
z = (n * pi)/8;

% Section a
y = exp(j*[1; 2]*z);
y1 = (y * y')/N
% Results make sense

% Section b
yN = exp(j*[1+N; 2+N]*z);
y2 = (yN * yN')/N

% Section c
yNsqrd = exp(1i * [1+N^2; 2+N^2] * z);
y3 = (yNsqrd * yNsqrd')/N^2