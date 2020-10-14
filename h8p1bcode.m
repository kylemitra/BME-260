%Kyle Mitra - BME260 - HW7
tspan = [0 10000];
k1 = 7.2*10^7;
kn1 = 0.3;
keR = 0.03;
keC = 0.3;
krec = 0.08;
kdeg = 0.0022;
kdegL = 0.01;
fR  = 0.2;
fL = 0.5;
nc = 10^9;
Cl = 0;
NCs = 0; 
Vs = 36.9;
Xo = [(1.8*10^-5);(8.38*10^4)];

[t, X] = ode45(@(t, X) h8p1b(t,X,k1,kn1,keR,krec,keC,kdeg,NCs,Cl,fR,Vs), tspan, Xo);

figure(1);clf
hold on
plot(t, X(:,1))
plot(t, X(:,2))
hold off
xlabel('Time(s)')
ylabel('Concentration (mol/L)')
title('Homework 8 Problem 1')