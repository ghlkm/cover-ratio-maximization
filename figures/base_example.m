clear all 
cpx=[0, 1];
cpy=[1, 0];

w1x=[.2, .5];
w1y=[1, 0];

w2x=[0, 1];
w2y=[.6, 0.1];
hold on
%text(.7, .35, 'C(p)=B', 'FontSize', 15)
%plot(cpx, cpy)

plot(w1x, w1y)
plot([0, 1], [1, 1], 'bla')
plot([1, 1], [0, 1], 'bla')

plot(w1x, w1y)
text(.15, .9, 'w_1¡¤p=S_{1k}', 'FontSize', 15)
%{
text(.6, .2, 'h_1^+', 'FontSize', 15)
text(.2, .4, 'h_1^-', 'FontSize', 15)
%}

plot(w2x, w2y)
text(.8, .15, 'w_2¡¤p=S_{2k}', 'FontSize', 15)

text(.5, .6, 'h_1^+\caph_2^+', 'FontSize', 15)
text(.53, .2, 'h_1^+\caph_2^-', 'FontSize', 15)
text(.05, .65, 'h_1^-\caph_2^+', 'FontSize', 15)
text(.1, .25, 'h_1^-\caph_2^-', 'FontSize', 15)



title('product space','FontSize', 15)
axis equal;
xlabel('p^1','FontSize', 15);
ylabel('p^2','FontSize', 15);

axis([0, 1, 0, 1])
