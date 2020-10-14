%Kyle Mitra - BME260 - HW8
tspan = [0 1000];
k1 = 1*10^4;
kn1 = 0.1;
k2 = 4000;
kn2 = 0.001;
Lo = 0.000001;
n = 100000;
R1o = 1000.*(n.*1000);
R2o = 1000.*(n.*1000);
Xo = [R1o;R2o;0;0];
Na = 6.022*10^25;

[t,X] = ode45(@(t,X) h8p2(t,X,k1,kn1,k2,kn2,R1o,R2o,Lo,n), tspan, Xo);

figure(1);clf
hold on
plot(t,X(:,1)./Na)
plot(t,X(:,2)./Na)
plot(t,X(:,3)./Na)
plot(t,X(:,4)./Na)
hold off
title('Concentration vs Time')
xlabel('Time(s)')
ylabel('Concentration (mol/L)')
legend('R1','R2','R1L','R2L')


figure(2);clf
hold on
plot(X(:,3),(X(:,3)./Lo))
plot(X(:,4),(X(:,4)./Lo))
hold off
legend('R1L','R2L')
xlabel('[RL]')
ylabel('[RL]/Lo')
title('Scatchard Plot')