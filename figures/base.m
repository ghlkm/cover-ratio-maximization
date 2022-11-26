clear all 
cpx=[0, 1];
cpy=[1, 0];

w1x=[.2, .5];
w1y=[1, 0];

w2x=[0, 1];
w2y=[.6, 0.1];
hold on

plot(w1x, w1y)
text(.3, .9, 'w¡¤p=S_{k}', 'FontSize', 15)

%text(.6, .2, 'h_1^+', 'FontSize', 15)
%text(.2, .4, 'h_1^-', 'FontSize', 15)
text(.2, .3, '-', 'FontSize', 40)
text(.7, .5, '+', 'FontSize', 40)


title('product space', 'FontSize', 15)
axis equal;
xlabel('p_1','FontSize', 15);
ylabel('p_2', 'FontSize', 15);

axis([0, 1, 0, 1])
