hold on
x = [.3 , .4];
y = [.9, .8];
plot(x(1), y(1), '.', 'MarkerSize', 20)
plot(x(2), y(2), '.', 'MarkerSize', 20)
plot(0, 0, '.', 'MarkerSize', 20)
text(.36, 0.95,  'P', 'FontSize', 23)
text(.46, 0.85,  'Q', 'FontSize', 23)
text(.06, 0.05,  'O', 'FontSize', 23)
text(-.5, .5,  'A', 'FontSize', 35)
text(.5, -.5,  'B', 'FontSize', 35)

plot(x, y)
plot([0, 0], [-1, 1])
plot([-1, 1], [0, 0])
quiver(-1, 0, 2, 0, 0)
quiver(0, -1, 0, 2, 0)
plot([-1 ,1], [-1, 1], '--k')

axis([-1, 1, -1, 1])