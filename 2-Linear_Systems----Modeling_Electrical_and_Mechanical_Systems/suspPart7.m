%function susp(M, k, beta);
% SUSP Simulate suspension
% susp(M, k, beta)
%
% % Produces a plot of the displacement of the suspension, x,
% as a function of time, given parameters
% M (mass), k (spring constant) and beta (damping)
%
% Farnam Adelkhani (9-23-2016)
clc;
M=[0.1,1,10];
K=[90,900,9000];
Beta=[6,30,60,400];

%for #7 M=1, k=900 and Beta....
F=K(2);
t=-1:0.001:2;
f=[zeros(1,1000),ones(1,2001)];

sys=tf(F/M(2),[1 Beta(1)/M(2) K(2)/M(2)]);
    y=lsim(sys,f,t);
    figure(2);   
plot(t,y,'r',t,f,'g');
xlabel('t');
ylabel('y(t)');
ylim([-1 2]);
warning off;
    hold on

    sys=tf(F/M(2),[1 Beta(2)/M(2) K(2)/M(2)]);
    y=lsim(sys,f,t);
    figure(2);   
plot(t,y,'y',t,f,'b');
xlabel('t');
ylabel('y(t)');
ylim([-1 2]);
warning off;

    sys=tf(F/M(2),[1 Beta(3)/M(2) K(2)/M(2)]);
    y=lsim(sys,f,t);
    figure(2);   
plot(t,y,'c',t,f,'b');
xlabel('t');
ylabel('y(t)');
ylim([-1 2]);
warning off;

    sys=tf(F/M(2),[1 Beta(4)/M(2) K(2)/M(2)]);
    y=lsim(sys,f,t);
plot(t,y,'m',t,f,'b');
xlabel('t');
ylabel('y(t)');
ylim([-1 2]);
warning off;
legend('Very underdamped','somewhat underdamped',...
    'critically damped','overdamped')
%undamped it will swing back-n-forth at a frequency.
%overdamped it will return to closed without oscillating.

