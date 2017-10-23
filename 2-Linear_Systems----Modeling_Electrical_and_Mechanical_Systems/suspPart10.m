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
M=[1,10];
K=[900,9000];
Beta=[60,600];
% #10 ... Compare susp(1, 900, 60) and susp(10, 9000, 600)
F=K(1);
t=-1:0.001:2;
f=[zeros(1,1000),ones(1,2001)];

    sys=tf(F/M(1),[1 Beta(1)/M(1) K(1)/M(1)]);
    y=lsim(sys,f,t);
plot(t,y,'r',t,f,'b');
xlabel('t');
ylabel('y(t)');
ylim([-1 2]);
warning off;
hold on

F=K(2);
    sys=tf(F/M(2),[1 Beta(2)/M(2) K(2)/M(2)]);
    y=lsim(sys,f,t);
plot(t,y,'r',t,f,'b');
xlabel('t');
ylabel('y(t)');
ylim([-1 2]);
legend('subs(1,900,60)','subs(10,9000,600)')
%The system is critically damped
