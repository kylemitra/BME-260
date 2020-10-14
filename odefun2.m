%Kyle Mitra - BME 260 ODE Practice - 2/25/19
function dXdt = odefun2(X,t, Bm, Bp, am, ap, A, K, n)
dXdt = zeros(2,1);
dXdt(1) = (Bm*((A^n)/((K^n)+(A^n))))-(am)*X(1);
dXdt(2) = (Bp*X(1))-(ap*X(2));
end 

%dXdt(1) = ((1)*(((5)^(2))/((7)^(2)+(5)^(2))))-(0.1)*M;
%dXdt(2) = ((3)*M)-(0.5)*P;