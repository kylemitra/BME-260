%Kyle Mitra - BME 260 ODE Practice - 2/25/19
function odesolver3
tic
tspan=[0 1000];
X0 = [1;1;0];
[t,X]=ode23s(@(t,X) odenotfun(X,t), tspan, X0);
plot(t,X)
legend('c1','c2','c3')
toc
end