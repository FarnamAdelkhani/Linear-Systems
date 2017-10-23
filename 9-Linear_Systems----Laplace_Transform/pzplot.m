function [ ] = pzplot( b, a )

b_roots=roots(b);
a_roots=roots(a);

plot(real(a_roots), imag(a_roots), 'x');

y_bounds = max([imag(a_roots)' imag(b_roots)'])
x_bounds = max([real(a_roots)' real(b_roots)'])

y_bounds2 = min([imag(a_roots)' imag(b_roots)'])
x_bounds2 = min([real(a_roots)' real(b_roots)'])

axis([(x_bounds2 - 1) (x_bounds + 1) (y_bounds2 - 1) (y_bounds + 1)]);

hold on;
plot(real(b_roots),imag(b_roots),'o');
hold on;

patch([x_bounds 100 100 x_bounds], [-100 -100 100 100], 'c', 'FaceAlpha', 0.1);

ax=gca;
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';

axis equal;


end