%% ENGR 315 - Lab 3

%% Figure(1)
figure(1);
T = '2*x';
plotlti(T);

%% Figure(2)
figure(2);
T = 'x+1';
plotlti(T);

%% Figure(3)
figure(3);
T = 'log(x)';
plotlti(T);

%% Figure(4)
figure(4);
T = 'x.^2';
plotlti(T);

%% Figure(5)
figure(5);
plotlti('(2.*exp(-2.*linspace(-5,5,(length(x)))))');

%% Figure(6)
figure(6);
plotlti('x.*u(linspace(-5,5,(length(x))))');

%% Figure(7)
figure(7);
plotlti('(linspace(-5,5,(length(x)))).*(u(linspace(-5,5,(length(x)))))');