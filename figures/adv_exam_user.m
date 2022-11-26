clear all 
hold on
cpx=[0, 1];
cpy=[1, 0];

x1=[.2, .4];
y1=[1, 0];

x2=[.45, .8];
y2=[1, 0];

x3=[0, 1];
y3=[.65, .6];

x4=[0, 1];
y4=[.5, .4];
%{
x5=[0, .6];
y5=[.8, .0];
plot(x5, y5, 'bla');

x6=[0, .7];
y6=[.4, .0];
plot(x6, y6, 'bla');

x7=[0, .2];
y7=[.7, .0];
plot(x7, y7, 'bla');


x8=[0.4, 1];
y8=[1, 0.43];
plot(x8, y8, 'bla');

x9=[0.35, 1];
y9=[1, .63];
plot(x9, y9, 'bla');
%}

p1x=.6;
p1y=.2;
%plot(p1x, p1y, '.b', 'MarkerSize', 20)
%text(.6, .15, 'p_1', 'FontSize', 15)


text(.2, .8, 'c_2', 'FontSize', 15)
text(.5, .5, 'c_3', 'FontSize', 15)
text(.9, .1, 'c_4', 'FontSize', 15)



plot(cpx, cpy, 'r');
%plot(x1, y1, 'bla');
plot(x2, y2, 'bla');
plot(x3, y3, 'bla');
%plot(x4, y4, 'bla');


plot([0, 1], [1, 1], 'bla')
plot([1, 1], [0, 1], 'bla')

title('product space','FontSize', 15)
axis equal;
xlabel('p^1','FontSize', 15);
ylabel('p^2','FontSize', 15);

axis([0, 1, 0, 1])
