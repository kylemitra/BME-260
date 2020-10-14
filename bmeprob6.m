%Kyle Mitra - BME260 - HW7

function dX = bmeprob6(t, X, k1, na, nb, Ao, Bo, V, Density, Wa, Wb, Wc, mtout)
dX = zeros(3,1);
dX(1) = na-k1.*(X(1)./V).*(X(2)./V).*V - mtout.* ( (X(1).*Wa) ./ ( X(1).*Wa + X(2).*Wb + X(3).*Wc)) ./ Wa
dX(2) = nb-k1.*(X(1)./V).*(X(2)./V).*V - mtout* ( (X(2).*Wb) ./ ( X(1).*Wa + X(2).*Wb + X(3).*Wc)) ./ Wb
dX(3) = -mtout.* ( (X(3).*Wc) ./ ( X(1).*Wa + X(2).*Wb + X(3).*Wc))./Wc + k1.*(X(1)./V).*(X(2)./V).*V
end