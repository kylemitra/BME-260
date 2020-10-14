%Kyle Mitra - Problem 4
t = linspace(0,20,21);
C = [10.00, 6.91, 4.98, 4.32, 3.55, 3.21, 2.61, 2.50, 2.22, 1.91, 1.80, 1.65, 1.52, 1.36, 1.42, 1.23, 1.20, 1.13, 1.09, 1.00, 0.92];
lnC = (log(C));
InvC = (1./C);

subplot(3,1,1);
plot(t,C,'-k')
title('C vs t')

subplot(3,1,2);
plot(t,lnC,'-k')
title('lnC vs t')

subplot(3,1,3);
plot(t,InvC,'-k')
title('1/C vs t')