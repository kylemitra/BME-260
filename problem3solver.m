%Kyle Mitra - BME 260 Problem 3
function problem3solver
k1 = 1;
k2 = 1;
Ao = 100;
Bo = 0;
Co = 100;
Do = 0;

tspan=[0 10];
X0 = [100;0;100;0];
[t,X]=ode45(@(t,X) problem3(X,t, k1, k2), tspan, X0);
plot(t,X)
legend('A','B','C','D')
title('Problem 3')
end