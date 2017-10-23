% Farnam Adelkhani (915815724) -- Engineering 315 Lab #4 Convolution
% SFSU Fall 2016 - 10/17/2016

%% Section I.a. 
% Approximation(computed convolution)
delta = 0.01; 
t = -2:delta:6; 
x = u(t+1) +u(t) - 2.*u(t-1); %fun. to be conv.
h = u(t) - 2.*u(t-1) + u(t-2); 
y = delta * conv(x, h); 
tt = -4:delta:12; % note: it’s twice as long as ‘t’ 
    figure ( 'Color' , 'w' ) %match figure 4
    plot(tt, y, 'LineWidth' , 2); 
    xlim([0 5]) 
hold on ; 

% Theoretical convolution 
delta2 = 0.1; 
t = -2:delta2:6; 
y2 = (t+1).*u(t+1) + t.*u(t) + (3-3*t).*u(t-1)...
                        + (5*t-10).*u(t-2) + (6-2*t).*u(t-3); 
    plot(t, y2, 'ro' , 'MarkerFaceColor' , 'r' ); 
    axis([-5 5 0 1.1]); 
    legend( 'Approximation' ,'Theoretical' ); 


%% Section I.b.
% Approximation(computed convolution)
figure(2)
delta = 0.010; 
t = -2:delta:6; 
x = sin(2*pi.*t).*(u(t)-u(t-3)); 
h = u(t)-u(t-3); 
y = delta * conv(x, h); 
tt = -4:delta:12; % note: it’s twice as long as ‘t’ 
    plot(tt, y, 'LineWidth' , 2); 
    xlim([-5 5]) 
hold on ; 

% Theoretical convolution 
delta2 = 0.10; 
t = -2:delta2:6; 
y2 = 1/(2*pi)*((1-cos(2*pi.*t)).*u(t)+(cos(2*pi.*t)+...
            cos(2*pi.*(t-3))-2).*u(t-3)+(1-cos(2*pi.*(t-3))).*u(t-6)); 
    plot(t, y2, 'ro' , 'MarkerFaceColor' , 'r' ); 
    axis([-5 5 0 0.4]); 
    legend( 'Approximation' , 'Theoretical' );

%% Section I.c.
% Approximation(computed convolution)
figure(3)
delta = 0.010;
t = -2:delta:6;
x = exp(-t).*u(t);
h = u(t-1)-u(t-3);
y = delta * conv(x, h);
tt = -4:delta:12; % note: it’s twice as long as ‘t’
    plot(tt, y, 'LineWidth', 2);
    xlim([-5 5])
hold on;

% Theoretical convolution
delta2 = 0.10;
t = -2:delta2:6;
y2 = (1-exp(1-t)).*u(t-1)+(exp(3-t)-1).*u(t-3);
    plot(t, y2, 'ro', 'MarkerFaceColor', 'r');
    axis([-5 5 0 1.1]);
    legend('Approximation', 'Theoretical');


%% Section II.a.
%Communative
t = -2:0.01:6;
t1 = -2:0.0050:6;
x= 2.*(u(t)-u(t-2));
h = u(t)-u(t-1);
y = conv(x,h);
hold on;
figure (4)
    plot(t1,y,'b');
hold on;
y1 = conv(h,x);
figure (5)
    plot(t1,y1,'--r');
hold off;

%% Section II.b.
%Associative
t = -2:0.1:6;
x = u(t)-u(t-1);
h1 = u(t)-2.*u(t-2)+u(t-3);
h2 = u(t+1)+u(t-1)-2.*(t-2);
y1 = conv(h1,h2);
y2 = conv(y1,x);
t1 = -2:0.0332:6;
hold on;
figure (6)
    plot(t1,y2,'b')
y3 = conv(x,h1);
hold on;
y4 = conv(y3,h2);
figure (7)
    plot(t1,y4,'--r')
hold off;

%% Section II.c.
%Distributive
t = -2:0.1:6;
x = u(t)-u(t-1);
h1 = u(t)-2.*u(t-2)+u(t-3);
h2 = u(t+1)+u(t-1)-2.*(t-2);
t1 = -2:0.0497:6;
k = conv(h1,h2);
hold on;
figure (8)
    plot(t1,k,'r')
hold on;
y = conv(x,h1)+conv(x,h2);
figure (9)
    plot(t1,y,'b')
hold off;

