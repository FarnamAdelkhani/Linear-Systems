close all;  %clear the workspace, close all figures, and clear command window
clear all;  %...

x0(1:20)=0;  % establish variables
t2=0:.1:1.9;
x1=t2;
x2(1:10)=0;

x=[x0 x1 x2];
t=-2:.1:2.9;

figure;
plot(t,x,'b','Linewidth',2);  % define plot and linewidth
    title('x(t)');  % give plot title
        subplot(3,2,1); % plot this as the 1st plot in a 3x2 matrix
plot(t-1,x,'c');
    title('x(t-1)');
        subplot(3,2,2);
plot(t+3,x,'r');
    title('x(3+t)');
        subplot(3,2,3);
plot(t,x+1,'g');
    title('x(t)+1');
        subplot(3,2,4);
plot(t/2,x,'m');
    title('x(2t)');
        subplot(3,2,5);
plot(2*t+1,x,'y');
    title('x(t/2+1)');
        subplot(3,2,6);
plot(t,t.*x,'k');
    title('tx(t)');