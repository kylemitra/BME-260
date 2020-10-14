%Kyle Mitra - BME 260 - Homework 8 - Problem 1

function dX = h8p1b(t,X,k1,kn1,keR,krec,keC,kdeg,Cl,NCs,fR,Vs)
dX = zeros(2,1);
dX(1) = (-k1*Cl.*X(1))+(kn1*NCs)-(keR.*X(1))+(krec.*(1-fR)).*(X(2))+Vs; %NRs
dX(2) = (keR.*X(1))+(keC*NCs)-((kdeg.*fR)+krec.*(1-fR)).*X(2); %NRi
end

%dX(2) = (k1*NLo*X(1))-(kn1+keC)*X(2); %Ncs