%Kyle Mitra - BME260 - HW8

function dX=h8p2(t,X,k1,kn1,k2,kn2,R1o,R2o,Lo,n)
dX = zeros(4,1);
dX(1) = (-k1*Lo*X(1))+(kn1*X(3));
dX(2) = (-k2*Lo*X(2))+(kn2*X(4));
dX(3) = (k1*Lo*X(1))-(kn1*X(3));
dX(4) = (k2*Lo*X(2))-(kn2*X(4));
end