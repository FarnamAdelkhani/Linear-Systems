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
%   #9 M varies
F=K(2);
t=-1:0.001:2;
f=[zeros(1,1000),ones(1,2001)];
    sys=tf(F/M(1),[1 Beta(3)/M(1) K(2)/M(1)]);
    y=lsim(sys,f,t);

    
plot(t,y,'r',t,f,'b');
xlabel('t');
ylabel('y(t)');
ylim([-1 2]);
warning off;
hold on

    sys=tf(F/M(2),[1 Beta(3)/M(2) K(2)/M(2)]);
    y=lsim(sys,f,t);
plot(t,y,'g',t,f,'b');
xlabel('t');
ylabel('y(t)');
ylim([-1 2]);
warning off;

    sys=tf(F/M(3),[1 Beta(3)/M(3) K(2)/M(3)]);
    y=lsim(sys,f,t);
plot(t,y,'c',t,f,'b');
xlabel('t');
ylabel('y(t)');
ylim([-1 2]);
warning off;
legend('M=0.1','M=1','M=10')
%As the mass approaches 1, the system becomes critically damped
