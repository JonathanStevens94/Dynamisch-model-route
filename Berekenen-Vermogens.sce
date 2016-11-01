Prol = Crol*Mtotaal*g*vWens
Plucht = 0.5*RhoLucht*S*Clucht*(vWens + Vw)^2*vWens
Pacc = Mtotaal*a*vWens
PklimTot = sin(hrad)*Mtotaal*g*vWens
Pverbruik = Prol + Plucht + PklimTot + Pacc

Pbatterij = Pverbruik - Pfietser - Ppaneel

disp("W", Prol, "De rolweerstand is")
disp("W", Plucht, "De luchtweerstand is")
disp("W", PklimTot, "Het klimvermogen is")
disp("W", Pacc, "Het acceleratievermogen is")
disp("W", Pverbruik, "Het totale vermogen is")
