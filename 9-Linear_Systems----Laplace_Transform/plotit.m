function [ ] = plotit(b, a)

figure; %set(figure, 'Position', [100 100 800 400]);
subplot(2, 1, 1)
pzplot(b, a);
subplot(2, 1, 2);
hplot(b, a);

return