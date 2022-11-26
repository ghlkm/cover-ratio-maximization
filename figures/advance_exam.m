
cpx=[0, 1];
cpy=[1, 0];

w1x=[.2, .5];
w1y=[1, 0];

w2x=[0, 1];
w2y=[.6, 0.1];
hold on
text(.7, .35, 'C(p)=B', 'FontSize', 15)
plot(cpx, cpy)

plot(w1x, w1y)
text(.3, .9, 'w_1¡¤p=S_{1k}', 'FontSize', 15)

%text(.5, .5, 'h_1^+', 'FontSize', 15)
%text(.1, .85, 'h_1^-', 'FontSize', 15)

plot(w2x, w2y)
text(.83, .2, 'w_2¡¤p=S_{2k}', 'FontSize', 15)

text(.45, .5, 'h_1^+\caph_2^+', 'FontSize', 15)
text(.05, .85, 'h_1^-\caph_2^+', 'FontSize', 15)
text(.8, .1, 'h_1^+\caph_2^-', 'FontSize', 15)


title('product space','FontSize', 15)
axis equal;
xlabel('p_1','FontSize', 15);
ylabel('p_2','FontSize', 15);
axis([0, 1, 0, 1])
