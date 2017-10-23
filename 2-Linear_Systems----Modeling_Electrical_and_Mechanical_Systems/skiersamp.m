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
betaw=0;


F = k;
t = -1:0.001:5; % 1 msec increments -1 -> 5s
f = [zeros(1,1000),ones(1,5001)]; %setup array
sys = tf([beta/M k/M], [1 (beta+betaw)/M k/M]); %create transfer fun. model
        %F/M  reps the rt side of the diff eq. 1 beta/M k/M left side
y = lsim(sys,f,t); %Simulate time response of dynamic system
    plot(t,y,'r',t,f,'b');
    ylim([0 2]);
    xlabel('Time (secs)');
    ylabel('Velocity of skier(m/sec)');
    legend('k=150')
warning off;