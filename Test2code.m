%Kyle Mitra - BME260 - Test Question
tspan = [0 100];
k1 = 0.01;
k2 = 0.05;
nA = 2;
nB = 2;
nout = 220; %in g/mol
Ao = 70;
Bo = 50;
Vol = 6.5;
Density = 1;
Wa = 50;
Wb = 60;
Wc = 100;
Wd = 170;
Xo = [70;50;0;0];

[t, X] = ode45(@(t, X) test2solver(t,X,k1,k2,nA,nB,nout,Vol,Wa,Wb,Wc,Wd), tspan, Xo);

figure(1);clf
hold on
plot(t, X(:,1))
plot(t,X(:,2))
plot(t,X(:,3))
plot(t,X(:,4))
hold off
xlim([0 50])
title('Concentration vs Time')
xlabel('Time(min)')
ylabel('Concentration (moles/L)')
legend('A','B','C','D')