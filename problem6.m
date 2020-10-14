%Kyle Mitra

function dXdt = problem6(X,t, k1, k2,k3)
dXdt = zeros(4,1);
dXdt(1) = -k1*X(1);
dXdt(2) = (k1*X(1))-(k2*X(2));
dXdt(3) = (k2*X(2))-(k3*X(3));
dXdt(4) = k3*X(3);
end
