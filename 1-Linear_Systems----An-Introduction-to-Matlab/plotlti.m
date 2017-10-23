function plotlti(T)
% LTI Check linearity and time invariance of systems

t1 = -5:0.05:5; % fine time scale
t2 = -5:0.5:5; % coarse time scale
%Farnam Adelkhani 10-11-2016

% Additive Property
x1 = u(t1);
x2 = u(t1);
x = x1 + x2;
t = x;
e1 = eval(T);
x = u(t2);
t = x;
y1 = eval(T);
y2 = y1;
e2 = y1 + y2;
subplot(4,1,1)
hold on
grid on
title(['Additive Property'])
plot(t1,e1,'r')
plot(t2,e2,'*')
xlim([-5 5])
ylabel('Amplitude')
xlabel('Time (secs)')
legend('Pre-Transformation','Post-Transformation','Location','southeast')

% Scaling Property Test
x1 = u(t1);
x = 20*x1;
t = x;
e1 = eval(T);
x = u(t2);
t = x;
y1 = eval(T);
e2 = 20*y1;
subplot(4,1,2)
hold on
grid on
title(['Scaling Property'])
plot(t1,e1,'r')
plot(t2,e2,'*')
ylabel('Amplitude')
xlabel('Time (secs)')
legend('Pre-Transformation','Post-Transformation','Location','southeast')
% Time Invariance Property
x1 = u(t1);
x2 = u(t1);
x = x1 + x2;
t = x;
e1 = eval(T);
x = u(t2);
t = x;
y1 = eval(T);
y2 = y1;
e2 = y1 + y2;
subplot(4,1,3)
hold on
grid on
title(['Time Invariance t=1'])
plot(t1+1,e1,'r') %time shifting before the transform
plot(t2+1,e2,'*') %time shifting after the transform
xlim([-5 5])
ylabel('Amplitude')
xlabel('Time (secs)')
legend('Pre-Transformation','Post-Transformation','Location','southeast')

% Time Invariance Property
x1 = u(t1);
x2 = u(t1);
x = x1 + x2;
t = x;
e1 = eval(T);
x = u(t2);
t = x;
y1 = eval(T);
y2 = y1;
e2 = y1 + y2;
subplot(4,1,4)
hold on
grid on
title(['Time Invariance t=-1'])
plot(t1-1,e1,'r') %time shifting before the transform
plot(t2-1,e2,'*') %time shifting after the transform
xlim([-5 5])
ylabel('Amplitude')
xlabel('Time (secs)')
legend('Pre-Transformation','Post-Transformation','Location','southeast')