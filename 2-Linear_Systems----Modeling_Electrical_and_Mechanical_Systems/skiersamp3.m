function skier(M, k, beta, betaw)
% SKIER Simulate velocity of skier
% skier(M, k, beta, betaw)
%
% Produces a plot of the velocity of the skier, v,
% as a function of time, given parameters
% M (mass), k (spring constant) and beta (damping of rope)
% and betaw (drag of water)
%
% Farnam Adelkhani (9-23-2016)

clc;
M=50;
k=150;
beta=200;
betaw=[50,200];


F = k;
t = -1:0.001:5; % 1 msec increments -1 -> 5s
f = [zeros(1,1000),ones(1,5001)]; %setup array
sys = tf([beta/M k/M], [1 (beta+betaw(1))/M k/M]); %create transfer fun. model
        %F/M  reps the rt side of the diff eq. 1 beta/M k/M left side
y = lsim(sys,f,t); %Simulate time response of dynamic system
    plot(t,y,'r');
    ylim([0 2]);
    xlabel('Time (secs)');
    ylabel('Velocity of skier(m/sec)');
    legend('Beta_w = 50','Beta_w = 100');
warning off;
    hold on

sys = tf([beta/M k/M], [1 (beta+betaw(2))/M k/M]);
    y=lsim(sys,f,t);
plot(t,y,'y');
xlabel('t');
ylabel('y(t)');
ylim([-1 2]);
warning off;