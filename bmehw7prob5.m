%Kyle Mitra - BME260 - HW7
tspan = [0 100];
Vo = 0.5;
Ao = 100/1000;
k1 = 1/1000;
ntotal = 0.04;
na = 1/1000;
Xo = [Ao*Vo; 0; Vo];

[t,X] = ode45(@(t,X) bmeprob5(t,X,k1,ntotal,na), tspan, Xo);

figure(1); clf
hold on
plot(t,X(:,1))
plot(t,X(:,2))
hold off
title('Moles of A and B')
xlabel('Time (min)')
ylabel('Moles')
legend('A','B')

figure(2); clf
plot(t,X(:,3))
title('Volume over Time')
xlabel('Time (min)')
ylabel('Volume (L)')

figure(3);clf
hold on
plot(t,X(:,1)./X(:,3))
plot(t,X(:,2)./X(:,3))
hold off
title('Concentration of A and B')
xlabel('Time(min)')
ylabel('Concentration (mol/L)')
legend('A','B')
