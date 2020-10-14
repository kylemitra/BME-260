%Kyle Mitra - BME 260 ODE Practice - 2/25/19
function dXdt = odenotfun(X,t)
dXdt = zeros(3,1);
dXdt(1) = -0.013*X(1)-1000*X(1)*X(3);
dXdt(2) = -2500*X(2)*X(3);
dXdt(3) = -0.013*X(1)-1000*X(1)*X(3)-2500*X(2)*X(3);
end 