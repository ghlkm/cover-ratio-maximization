clear all
hold on;
plot(0.5, 0.5, '.', 'MarkerSize', 30)
text(0.55, 0.55, 'P','FontSize', 20);
text(0.25, 0.25, 'II','FontSize',  30);
text(0.75, 0.75, 'I', 'FontSize', 30);
text(0.25, 0.75, 'III(1)', 'FontSize', 30);
text(0.75, 0.25, 'III(2)', 'FontSize', 30);
plot([0, 1], [0.5, 0.5], ':');
plot([0.5, 0.5], [0, 1], ':');
hold off;