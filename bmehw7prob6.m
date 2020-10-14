%Kyle Mitra - BME260 - HW7
tspan = [0 100];
k1 = 0.1;
na = 1;
nb = 2;
Ao = 50;
Bo = 30;
V = 4.3;
Density = 1;
Wa = 50;
Wb = 60;
Wc = 110;
mtout = 170;
Xo = [Ao; Bo; 0];
[t, X] = ode45(@(t, X) bmeprob6(t, X, k1, na, nb, Ao, Bo, V, Density, Wa, Wb, Wc, mtout), tspan, Xo);

figure(1);clf
hold on
plot(t, X(:,1)./V)
plot(t,X(:,2)./V)
plot(t,X(:,3)./V)
hold off
title('Concentration vs Time')
xlabel('Time(min)')
ylabel('Concentration (moles/L)')