%Kyle Mitra

k1 = 10;
k2 = 1;
Ao = 100;
Bo = 0;
Co = 100;
Do = 0;
t = linspace(0,100,5);

A = Ao-k1*t;
B = (Bo+k1*t)-(Bo+k2*t);
C = Co-k2*t;
D = Do+k2*t;

hold on
plot(t,A)
plot(t,B)
plot(t,C)
plot(t,D)
hold off
legend('A','B','C','D')