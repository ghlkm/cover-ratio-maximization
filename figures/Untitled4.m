hold on
x = [.3 , .6, .9, .95];
y = [.9, .5, .3, .15];
plot(x(1), y(1), '.', 'MarkerSize', 20)
plot(x(2), y(2), '.', 'MarkerSize', 20)
plot(x(3), y(3), '.', 'MarkerSize', 20)
plot(x(4), y(4), '.', 'MarkerSize', 20)

plot([0, x(1)], [y(1), y(1)])
plot([x(1), x(1)], [0, y(1)])
plot([0, x(2)], [y(2), y(2)])
plot([x(2), x(2)], [0, y(2)])
plot([0, x(3)], [y(3), y(3)])
plot([x(3), x(3)], [0, y(3)])
plot([0, x(4)], [y(4), y(4)])
plot([x(4), x(4)], [0, y(4)])

text(.15, .7 , '1', 'FontSize', 20)
text(.45, .4 , '1', 'FontSize', 20)
text(.75, .25 , '1', 'FontSize', 20)
text(.75, .075 , '2', 'FontSize', 20)
text(.915, .075 , '1', 'FontSize', 20)

text(.7, .7 , '1', 'FontSize', 20)
text(.15, .4 , '2', 'FontSize', 20)
text(.45, .25 , '2', 'FontSize', 20)
text(.45, .075 , '3', 'FontSize', 20)

text(.15, .25 , '3', 'FontSize', 20)
text(.15, .075 , '4', 'FontSize', 20)

text(x(1)+.05, y(1)+.05,  'p1', 'FontSize', 13)
text(x(2)+.05, y(2)+.05,  'p2', 'FontSize', 13)

text(x(3)+.05, y(3)+.05,  'p3', 'FontSize', 13)
text(x(4), y(4)+.05,  'p4', 'FontSize', 13)
text(.56, 0.4,  'p', 'FontSize', 13)
plot(.55, .4, '.','MarkerSize', 20 )


axis([0, 1, 0, 1])