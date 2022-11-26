
cpx=[0, 1];
cpy=[1, 0];

w1x=[.2, .5];
w1y=[1, 0];

w2x=[0, 1];
w2y=[.6, 0.1];

p1=[.4 , 1];
p2= [.6, .5];
p3= [.5, .6];


hold on



plot(p1(1), p1(2), '.', 'MarkerSize', 20)
text(.4, .95, 'p_1', 'FontSize', 15)

plot(p2(1), p2(2), '.', 'MarkerSize', 20)
text(.6, .47, 'p_2', 'FontSize', 15)

plot(p3(1), p3(2), '.', 'MarkerSize', 20)
text(p3(1)+0.02, p3(2), 'p_3', 'FontSize', 15)

%text(.65, .36, 'A', 'FontSize', 15)
plot([0, .6], [1, .4], '--')
plot([1, .6], [0, .4], '')

%Í¹°ü
plot([0, p1(1), p2(1), p2(1)], [1, p1(2), p2(2), 0],'--k')


%{
plot(w1x, w1y, ':r')
text(.25, .1, 'w_1¡¤p=S_{1k}', 'FontSize', 15)

%text(.5, .5, 'h_1^+', 'FontSize', 15)
%text(.1, .85, 'h_1^-', 'FontSize', 15)

plot(w2x, w2y)
text(.05, .5, 'w_2¡¤p=S_{2k}', 'FontSize', 15)

text(.7, .3, 'h_2^+', 'FontSize', 15)
text(.89, .1, 'h_2^-', 'FontSize', 15)

%}


title('product space','FontSize', 15)
axis equal;
xlabel('P_1','FontSize', 15);
ylabel('P_2','FontSize', 15);
text(.7, .2, 'C(p)=B', 'FontSize', 15)

axis([0, 1, 0, 1])
