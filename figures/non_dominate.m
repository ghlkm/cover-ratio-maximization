hold on
x = [0, 1];
y = [0, .1];
x1 = [0, 1];
y1 = [0, .3];
x2 = [0, 1];
y2 = [0, .6];
x3 = [0, 1];
y3 = [0, .9];
x4 = [0, .8];
y4 = [0, 1];
x5 = [0, .6];
y5 = [0, 1];
x6 = [0, .3];
y6 = [0, 1];
plot(x, y, 'g')
plot(x1, y1, 'g')
plot(x2, y2, 'b')
plot(x3, y3, 'b')
plot(x4, y4, 'g')
plot(x5, y5, 'g')
plot(x6, y6, 'b')
text(0.055, 0.8, 'I', 'FontSize', 15);
text(0.3, 0.8, 'II', 'FontSize', 15);
text(0.55, 0.8, 'III', 'FontSize', 15);
text(0.6, 0.65, 'IV', 'FontSize', 15);
text(0.65, 0.45, 'V', 'FontSize', 15);
text(0.7, 0.3, 'VI', 'FontSize', 15);
text(0.8, 0.15, 'VII', 'FontSize', 15);
text(0.9, 0.05, 'VIII', 'FontSize', 15);
text(1, .1, 'l_{PQ_1}', 'FontSize', 15)
text(1, .3, 'l_{PQ_2}', 'FontSize', 15)
text(.8, 1, 'l_{PQ_3}', 'FontSize', 15)
text(.55, 1, 'l_{PQ_4}', 'FontSize', 15)
text(1, .5, 'l_{PR_3}', 'FontSize', 15)
text(1, .9, 'l_{PR_2}', 'FontSize', 15)
text(.25, 1, 'l_{PR_1}', 'FontSize', 15)


axis([0, 1, 0, 1])