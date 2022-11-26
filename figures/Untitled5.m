hold on
x = [.3 , .6, .9, .95];
y = [.9, .5, .3, .15];
plot(x(1), y(1), '.', 'MarkerSize', 20)
plot(x(2), y(2), '.', 'MarkerSize', 20)
plot(x(3), y(3), '.', 'MarkerSize', 20)
plot(x(4), y(4), '.', 'MarkerSize', 20)
text(.56, 0.4,  'p', 'FontSize', 13)
plot(.55, .4, '.','MarkerSize', 20 )

x2= x;
y2 = y;
x2(2) = .55;
y2(2) = .4;

plot(x2, y2);
plot([0, 1], [0, .5])
plot([0, 1], [0, 3.5])
plot([0, 1], [0, 1/3])

axis([0, 1, 0, 1])