clc, close all, clear all;

%Part a)

%Part a - i
RC = [.1 1 10];
n = 0;

for a = 1:1:3

n(a) = 1/(RC(a));
figure
set(clf, 'Color', 'W');
freqde(n(a),[1 (n(a))]);

end

%Part A - ii subpart a
d = [.1 .2 .5 .8 1 2 5 8 10];
L = length(d);
w = 10;

for a = 1:1:L
    
    num = [w^2];
    den = [1 2*(d(a))*w w^2];
    
    figure
    set(clf, 'Color', 'W');
    subplot(2,1,1)
    impulsede(num,den);
    title(['Impulse response with w = 10, d = ',num2str(d(a))])
 
    subplot(2,1,2)
    freqde(num,den);
    title(['Frequency with w = 10, d = ',num2str(d(a))])
    

end

%Part A - ii part b
d1 = .1;
w1 = [.1 1 10];
m = length(w1);

for a = 1:1:m
    
    num = [(w1(a))^2];
    den = [1 2*d1*(w1(a)) (w1(a))^2];
    
    figure
    set(clf, 'Color', 'W');
    subplot(2,1,1);
    impulsede(num,den);
    title(['Impulse response with d = .1, w = ',num2str(w1(a))]);
 
    subplot(2,1,2);
    freqde(num,den);
    title(['Frequency with d = .1, w = ',num2str(w1(a))]);
    
end

%Part A - iii: function a -> g
impfreqde(5,[1 5]);
impfreqde(2,[1 3 2]);
impfreqde(1,[1 1 1]);
impfreqde(1,[1 2 1]);
impfreqde(1,[1 1]);
impfreqde(6,[1 6 11 6]);
impfreqde(34,[1 4 21 34]);


% Part b - i
c = 0;
s = 0;
a = 1;
for w = 0:.02454:10*2*pi
    c(a) = cos(w);
    s(a) = sin(w);
    a = a + 1;
end

% Part b - iii

freqcos(10, [1 10])


% Part b - iii

ab ={
    [1 5] 5
    [1 3 2] 2
    [1 1 1] 1
    [1 2 1] 1
    [1 0 1] 1
    [1 6 11 6] 6
    [1 4 21 34] 34
};

lab = length(ab);

for i = 1:lab
    figure
    freqcos(ab(i,2), ab(i,1));
end

--------------------------------------------------
My new freqcos function code is 

function freqcos(b, a)

pt = 2560; % total number of points
t = linspace(0, 2*pi,pt);
w = 10;
c = cos(w.*t);
s = sin(w.*t);

sys = tf(b,a);
yc = lsim(sys,c,t);
ys = lsim(sys,s,t);

plot(t,c);
hold on
plot(t,yc,'--')
xlabel('time(s)');
legend('c', 'yc')
grid on
hold off

y = yc;
z1 = mean(y'.*s)
z2 = mean(y'.*c)

z = z1-j*z2;
magZ = abs(z);
angleZ = angle(z);

end

