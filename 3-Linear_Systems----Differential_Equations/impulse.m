%% ENGR 315 - Lab 2 - Differential EQ
% Farnam Adelkhani 915815724
%10/2/2016

figure(1)
        %subplot(8,1,1)
s=tf('s');
t=5/(s + 5);
set(figure(1), 'Color', 'w', ...
		'Units', 'inch', ...
		'Position', [2 2 6 2]);
step(t)
hold on
impulse(t)
        title('a');
        legend('step', 'impulse');    
figure(2)       
s=tf('s');
t=6/(s^2 + 4*s + 3);
set(figure(2), 'Color', 'w', ...
		'Units', 'inch', ...
		'Position', [2 2 6 2]);
        %subplot(8,1,2)
step(t)
hold on
impulse(t)
        title('b');
        legend('step', 'impulse');
figure(3) 
s=tf('s');
t=13/(s^2 + 2*s + 26);
set(figure(3), 'Color', 'w', ...
		'Units', 'inch', ...
		'Position', [2 2 6 2]);
        %subplot(8,1,3)
step(t)
hold on
impulse(t)
        title('c');
        legend('step', 'impulse');
figure(4)   
s=tf('s');
t=1/(s^2 + s);
set(figure(4), 'Color', 'w', ...
		'Units', 'inch', ...
		'Position', [2 2 6 2]);
        %subplot(8,1,4)
step(t)
hold on
impulse(t)
        title('d');
        legend('step', 'impulse');
figure(5)   
s=tf('s');
t=20/(s^3 + 10*s^2 + 29*s + 20);
set(figure(5), 'Color', 'w', ...
		'Units', 'inch', ...
		'Position', [2 2 6 2]);
        %subplot(8,1,5)
step(t)
hold on
impulse(t)
        title('e');
        legend('step', 'impulse');
figure(6)   
s=tf('s');
t=5/(s^3 + 3*s^2 + 7*s + 5);
set(figure(6), 'Color', 'w', ...
		'Units', 'inch', ...
		'Position', [2 2 6 2]);
        %subplot(8,1,6)
step(t)
hold on
impulse(t)
        title('f');
        legend('step', 'impulse');
figure(7)   
s=tf('s');
t=3/(s^3 + 6*s^2 + 11*s + 6);
set(figure(7), 'Color', 'w', ...
		'Units', 'inch', ...
		'Position', [2 2 6 2]);
        %subplot(8,1,7)
step(t)
hold on
impulse(t)
        title('g');
        legend('step', 'impulse');
figure(8)   
s=tf('s');
t=34/(s^3 + 4*s^2 + 21*s + 34);
set(figure(8), 'Color', 'w', ...
		'Units', 'inch', ...
		'Position', [2 2 6 2]);
        %subplot(8,1,8)
step(t)
hold on
impulse(t)
        title('h');
        legend('step', 'impulse');

