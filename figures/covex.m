%change%
hold on;
x= [.5, .7, .8, 1];
y= [1, .8, .8, .6];
plot(x, y)
p1=[.65, .9];
p2=[.8, .7];
plot([p1(1), p2(1)], [p1(2), p2(2)], '-.')
plot(p1(1), p1(2))
plot(p2(1), p2(2))
p3=[p1(1), p2(2)];
plot([0, p2(1)], [p3(2), p2(2)], '-.')
plot([p1(1), p3(1)], [p1(2), 0], '-.')
text(p1(1)+0.02, p1(2)+.02,  'p_1', 'FontSize', 15)
text(p2(1)+0.02, p2(2),  'p_2', 'FontSize', 15)

text(1, .6, 'C(p)=B', 'FontSize', 15)
text(.7, .75,  'I', 'FontSize', 15)
text(.25, .4,  'II', 'FontSize', 15)

title('product space','FontSize', 15)
axis equal;
xlabel('p_1','FontSize', 15);
ylabel('p_2','FontSize', 15);

axis([0, 1.2, 0, 1])

