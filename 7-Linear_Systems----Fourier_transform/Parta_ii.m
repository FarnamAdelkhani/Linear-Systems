%% Part a - ii 
% section a
d = [.1 .2 .5 .8 1 2 5 8 10];
L = length(d);
w0 = 10;

for a = 1:1:L
    
numerator = [w0^2];
denominator = [1 2*(d(a))*w0 w0^2];
    
figure
subplot(2,1,1)
impulse(numerator,denominator);
title(['Impulse-response for \omega_0 = 10, d = ',num2str(d(a))])
 
subplot(2,1,2)
freqde(numerator,denominator);
title(['Frequency with \omega_0 = 10, d = ',num2str(d(a))])
    

end

%% Part a - ii 
% section b

Z = .1;
w01 = [.1 1 10];
m = length(w01);

for a = 1:1:m
    
numerator = [(w01(a))^2];
denominator = [1 2*Z*(w01(a)) (w01(a))^2];
    
figure
subplot(2,1,1);
impulse(numerator,denominator);
title(['Impulse response with Z = .1, \omega_0 = ',num2str(w01(a))]);
 
subplot(2,1,2);
freqde(numerator,denominator);
title(['Frequency with Z = .1, \omega_0 = ',num2str(w01(a))]);
    
end