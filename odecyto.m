function dXdt = odecyto(X,t,k1)
ICAM = X(1);
PfEMP1 = X(2);
BoundComplex = X(3);
rRBCs = X(4);
TotalO2Loss = X(5);
dXdt = zeros(5,1);
 
dXdt(1) = -k1*X(1)*X(2);
dXdt(2) = -k1*X(1)*X(2);
dXdt(3) = k1*X(1)*X(2);
dXdt(4) = 1e9*(9175040)*(22^(t/2));
dXdt(5) = ((3*10^22 - 10^6)*X(3)) - X(4);
 
end
