function impfreqde(b,a)
% Part a - iii: Impulse and frequency response of equations a -> g.
% this function is to put part iii into one figure

figure
set(clf, 'Color', 'W');
subplot(2,1,1);
impulsede(b,a);
title(['Impulse response with num = ',num2str(b),' den = ',num2str(a)]);
 
subplot(2,1,2);
freqde(b,a);
title(['Frequency response with num = ',num2str(b),' den = ',num2str(a)]);

end