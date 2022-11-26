clear all
hold on;
p1 = [.1, .8];
p2 = [.23, .7];
p3 = [.5, .65];
p4 = [.7, .3];
p5 = [.8, .23];
text(p1(1)+.05, p1(2)+.05,  'p1', 'FontSize', 13)
text(p2(1)+.05, p2(2)+.05,  'p2', 'FontSize', 13)
text(p3(1)+.05, p3(2)+.05,  'p3', 'FontSize', 13)
text(p4(1)+.05, p4(2)+.05,  'p4', 'FontSize', 13)
text(p5(1)+.05, p5(2)+.05,  'p5', 'FontSize', 13)

plot(p1(1), p1(2),  '.', 'MarkerSize', 30)
plot(p2(1), p2(2),  '.', 'MarkerSize', 30)
plot(p3(1), p3(2),  '.', 'MarkerSize', 30)
plot(p4(1), p4(2),  '.', 'MarkerSize', 30)
plot(p5(1), p5(2),  '.', 'MarkerSize', 30)
axis([0, 1, 0, 1])
x = [p1(1), p1(1), p2(1), p2(1),p3(1), p3(1),p4(1), p4(1), p5(1), p5(1), 1];
y = [1, p1(2), p1(2), p2(2), p2(2), p3(2),p3(2), p4(2),p4(2), p5(2), p5(2)];
plot(x, y)
text(0.7, .7, 'A', 'FontSize', 30)
text(0.3, .4, 'B', 'FontSize', 30)
