clc;

set(clf, 'Color', 'w');

% given function x(t)=exp(-alpha.*t).*(cos((omega.*t)+theta)).*ut;
    ut=1;
    t=0:0.0001:5;
% constant alpha and omega value
    omega=2.*pi.*1;
    alpha=1;

    % theta=0
x1=exp(-alpha.*t).*(cos((omega.*t)+0)).*ut;

    % theta=pi/4
x2=exp(-alpha.*t).*(cos((omega.*t)+(pi/4))).*ut;

    % theta=pi/2
x3=exp(-alpha.*t).*(cos((omega.*t)+(pi/2))).*ut;

    % theta=3pi/4
x4=exp(-alpha.*t).*(cos((omega.*t)+(3.*pi/4))).*ut;

    % theta=pi
x5=exp(-alpha.*t).*(cos((omega.*t)+(pi))).*ut;

    plot(t,x1,'r',t,x2,'b',t,x3,'g',t,x4,'y',t,x5,'k');
legend('\theta=0','\theta=\pi/4','\theta=\pi/2','\theta=3\pi/4','\theta=\pi');
title('Engr 315 - lab 1 part 4');