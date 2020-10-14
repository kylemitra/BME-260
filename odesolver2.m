%Kyle Mitra - BME 260 ODE Practice - 2/25/19
function odesolver2
Bm = 1;
Bp = 3;
am = 0.1;
ap = 0.5;
A = 5;
K = 7;
n = 2;

tspan=[0 5];
X0 = [0;0];
[t,X]=ode45(@(t,X) odefun2(X,t, Bm, Bp, am, ap, A, K, n), tspan, X0);
plot(t,X)
legend('mRNA','Protein')
end