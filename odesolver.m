%Kyle Mitra - BME 260 ODE Practice - 2/25/19
function odesolver
tspan=[0 7];
y0 = 3;
[t,y]=ode45(@(t,y) odefun(t,y), tspan, y0);
plot(t,y)
end