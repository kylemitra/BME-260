%Kyle Mitra - BME260 - Test Two

function dX=test2solver(t,X,k1,k2,nA,nB,nout,Vol,Wa,Wb,Wc,Wd)
dX = zeros(4,1);
dX(1) = (nA)-(nout.*((X(1).*Wa)./((X(1).*Wa)+(X(2).*Wb)+(X(3).*Wc)+(X(4).*Wd)))./Wa)-(k1.*(X(1)./Vol).*(X(2)./Vol).*Vol);
dX(2) = (nB)-(nout.*((X(2).*Wb)./((X(1).*Wa)+(X(2).*Wb)+(X(3).*Wc)+(X(4).*Wd)))./Wb)-(k1.*(X(1)./Vol).*(X(2)./Vol).*Vol)-(k2.*(X(2)./Vol).*(X(3)./Vol).*Vol);
dX(3) = -(nout.*((X(3).*Wc)./((X(1).*Wa)+(X(2).*Wb)+(X(3).*Wc)+(X(4).*Wd)))./Wc)+(k1.*(X(1)./Vol).*(X(2)./Vol).*Vol)-(k2.*(X(2)./Vol).*(X(3)./Vol).*Vol);
dX(4) = -(nout.*((X(4).*Wd)./((X(1).*Wa)+(X(2).*Wb)+(X(3).*Wc)+(X(4).*Wd)))./Wd)+(k2.*(X(2)./Vol).*(X(3)./Vol).*Vol);
end