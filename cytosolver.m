function cytosolver
tspan = [0 11];
k1 = 1.28e-17;
X0 = [2.1e15,9.65e15, 0,0,0];
[t,X] = ode45(@(t,X) odecyto(X,t,k1), tspan, X0);

figure(1);clf
plot(t,X)
legend('ICAM','PfEMP1','Bound Complexes','FontSize',22);
xlabel('Time After Symptoms Begin (days)', 'FontSize',26);
ylabel('Molecules in Bloodstream', 'FontSize',26);
title('Cytoadhesion in Bloodstream', 'FontSize',22);
a = get(legend,'position');
b = [0.4911 0.45 0.4000 0.1976];
set(legend,'position',b)
ax = gca;
ax.FontSize = 20;
 
% x = [0;1;2;3;4;5;6;7;8;9;10;11];
% y = [0;2.663e14;4.378e14;6.379e14;8.105e14;9.247e14;1.06e15;1.149e15;1.256e15;1.35e15;1.412e15;1.486e15];
% eq = polyfit(x,y,3)
% figure(2); clf
% plot(x,y,'k.')
% hold on
% plot(x,1e14.*((0.0047.*x.^3)+(-0.1597.*x.^2)+(2.5358.*x)+(0.0787)),'b-')
 
end
