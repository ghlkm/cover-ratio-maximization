%change%
clear all 
hold on;

plot([.8, 1], [1, .7])
plot([.6, .9], [1, 0])
plot([.1, 1], [1, 0])
plot([0, 0.4], [0.2, 0])
text(0.9, .75, 'w_{1}¡¤p=S_{k1}', 'FontSize', 15)
text(0.5, 0.5, 'C(p)=B', 'FontSize', 15)
text(.8, 0.5, 'w_{3}¡¤p=S_{k3}', 'FontSize', 15)
text(.15, 0.1, 'w_{2}¡¤p=S_{k2}', 'FontSize', 15)

title('product space','FontSize', 15)
axis equal;
xlabel('p_1','FontSize', 15);
ylabel('p_2','FontSize', 15);
plot([0, 1], [1, 1], 'bla')
plot([1, 1], [0, 1], 'bla')

axis([0, 1, 0, 1])
