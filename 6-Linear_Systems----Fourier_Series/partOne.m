%% Complex Exponential Basis Functions
% partOne
w = (2*pi)/64;
t = 0: 64;
m = 1; % use m for k
x = exp(j * m * w * t);

figure (1);
subplot(1,2,1);
plot(real(x), imag(x),'-o','MarkerFaceColor','r'); % plotting complex quan.
xlabel('Re\{x\}');   % \{x\} ==> {x} in axis!
ylabel('Im\{y\}');       
axis([-1.5 1.5 -1.2 1.2]); % set axis
grid on;
title('\omega_{0} (left)'); % \omega to gen/ omega symbol

subplot(1,2,2);
m = 4;
x = exp(j*m*w*t);
plot(real(x), imag(x),'-o','MarkerFaceColor','r');
xlabel('Re\{x\}');
ylabel('Im\{y\}');
axis([-1.5 1.5 -1.2 1.2]);
grid on;
title('4\omega_{0} (right)');
