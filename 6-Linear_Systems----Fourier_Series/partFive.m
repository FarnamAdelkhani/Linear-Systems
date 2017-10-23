%% partFive
% Create plots with t0=1sec, T = 2 and M=20
figure (3);
t0 = 1;
T = 2;
m = 20;
subplot(2,1,1);
plotfs(t0,T,m);
xlabel('\itt (secs)');

subplot(2,1,2);
plotk(t0,T,m);

% Create plots with t0=2sec, T = 4 and M=20
figure (4);
t0 = 2;
T = 4;
m = 20;
subplot(2,1,1);
plotfs(t0,T,m);
xlabel('\itt (secs)');

subplot(2,1,2);
plotk(t0,T,m);

% Create plots with t0=1sec, T=4 and M=40
figure (5);
t0 = 1;
T = 4;
m = 40;
subplot(2,1,1);
plotfs(t0,T,m);
xlabel('\itt (secs)');

subplot(2,1,2);
plotk(t0,T,m);

% t0=1sec, T=8 and M=80
figure (6);
t0 = 1;
T = 8;
m = 80;
subplot(2,1,1);
plotfs(t0,T,m);
xlabel('\itt (secs)');

subplot(2,1,2);
plotk(t0,T,m);