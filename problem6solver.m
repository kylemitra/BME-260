function problem6solver
k1 = 1;
k2 = 1;
k3 = 1;
Ao = 100;
Bo = 0;
Co = 0;
Do = 0;

tspan=[0 10];
X0 = [100;0;0;0];
[t,X]=ode45(@(t,X) problem6(X,t, k1, k2, k3), tspan, X0);
plot(t,X)
legend('A','B','C','D')
title('Problem 6')
end