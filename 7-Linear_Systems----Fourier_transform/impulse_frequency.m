function impulse_frequency(b,a)

figure
set(clf, 'Color', 'W');
subplot(2,1,1);
impulse(b,a);
grid on;
title(['Impulse-response denominator = ',num2str(a), ' numerator = ',num2str(b),]);
 
subplot(2,1,2);
freqde(b,a);
grid on;
title(['Frequency-response denominator = ',num2str(a), ' numerator = ',num2str(b),]);

end