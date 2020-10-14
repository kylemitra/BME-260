%Kyle Mitra - BME260 - HW7

function dX=bmeprob5(t,X,k1,ntotal,n)
dX = zeros(3,1);
dX(1) = n-k1*X(3);
dX(2) = 2*k1*X(3);
dX(3) = ntotal;
end