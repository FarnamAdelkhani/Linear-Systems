%close all;
%clear all;  %clear the workspace, close all figures, and clear command window
clc; %does the same thing == clear all; close all;

set(clf, 'Color', 'w'); %clf deletes all graphics, set plot background to white

% Given: x(t)=exp(-alpha.*t).*(cos((omega.*t)+theta)).*ut;
    ut=1;
    t=0:0.0001:5; %set the time
    theta=0;
    % ... constant alpha and different values of omega

% a. omega=2.*pi.1,alpha=1
    x1=exp(-1.*t).*(cos((2.*pi.*1.*t)+theta)).*ut;

% b. omega=2.*pi.2,alpha=1
    x2=exp(-1.*t).*(cos((2.*pi.*2.*t)+theta)).*ut;

% c. omega=2.*pi.4,alpha=1
    x3=exp(-1.*t).*(cos((2.*pi.*4.*t)+theta)).*ut;

    % constant omega and different value of alpha

% d. omega=2.*pi.2,alpha=1
    x4=exp(-1.*t).*(cos((2.*pi.*2.*t)+theta)).*ut;

% e. omega=2.*pi.2,alpha=2
    x5=exp(-2.*t).*(cos((2.*pi.*2.*t)+theta)).*ut;

% f. omega=2.*pi.2,alpha=4
    x6=exp(-4.*t).*(cos((2.*pi.*2.*t)+theta)).*ut;

subplot(2,1,1); % 1/2 in 2x1 matrix
    plot(t,x1,'r',t,x2,'b',t,x3,'g'); % set line colors
legend('\omega=2\pi*1','\omega=2\pi*2','\omega=2\pi*4');
    title('Engr 315 - lab 1 part 3');

subplot(2,1,2); % 2/2 in 2x1 matrix
plot(t,x4,'r',t,x5,'b',t,x6,'g'); % set line colors
legend('\alpha=1','\alpha=2','\alpha=4');