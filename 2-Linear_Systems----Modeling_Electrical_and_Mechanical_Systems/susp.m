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
M = 1;
k = 900;
beta = 60;

F = k;
t = -1:0.001:2; % 1 msec increments -1 -> 2s
f = [zeros(1,1000),ones(1,2001)]; %setup array
sys = tf(F/M,[1 beta/M k/M]); %create transfer fun. model
        %F/M  reps the rt side of the diff eq. 1 beta/M k/M left side
y = lsim(sys,f,t); %Simulate time response of dynamic system
figure(1);    
plot(t,y,'r',t,f,'b');
    ylim([-1 2]);
    xlabel('Time (secs)');
    ylabel('y(t)');
warning off;
