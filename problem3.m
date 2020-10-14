%Kyle Mitra - BME 260 Problem 3
function dXdt = problem3(X,t, k1, k2)
dXdt = zeros(4,1);
dXdt(1) = -k1*X(1);
dXdt(2) = (k1*X(1))-(k2*X(2)*X(3));
dXdt(3) = -k2*X(2)*X(3);
dXdt(4) = k1*X(1);
end