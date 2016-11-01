// Dit programma zet in een grafiek uit het nodige gewicht van batterijpakket in functie van de gewenste snelheid.
// Dit is enkel van nut om in het begin een batterijpakket te dimensioneren
// Eens we een batterijpakket hebben gekozen, is dit programma niet meer van toepassing

wensSnelheid = input ("Gewenste snelheid? (km/u)")
vWens = wensSnelheid/3.6

tijdTot = Afstand/wensSnelheid

waardeV2 = (0.5*RhoLucht*S*Clucht)/(Nmotor*capKg*3.6/Afstand-Crol*g-sin(hrad)*g-a)
waardeV = waardeV2*2*Vw
waardeC1 = waardeV2*Vw^2
waardeC2 = (Crol*Mtot*g+sin(hrad)*Mtot*g+Mtot*a)/(Nmotor*capKg*3.6/Afstand-Crol*g-sin(hrad)*g-a)
waardeC = waardeC1+waardeC2
waardeVom = (Pelek - Ngen*Pfietser-Nmotor*Ppaneel)/(Nmotor*capKg*3.6/Afstand-Crol*g-sin(hrad)*g-a)

vStart = 1
vStop = 25
vStap = 20e-3
v = vStart:vStap:vStop

vlengte = length(v)

v2= vStart:vStap:vStop
for i= 1:vlengte
    v2(i)=v(i)*v(i)
end

vOmgekeerd = vStart:vStap:vStop
for i = 1:vlengte
    if v(i)==0
        vOmgekeerd(i)=0;
    else vOmgekeerd(i)=1/v(i);
        end
end

mBat = waardeV2*v2+waardeV*v+waardeC+waardeVom*vOmgekeerd
Mbatterij = waardeV2*vWens*vWens + waardeV*vWens + waardeC + waardeVom/vWens
Mtotaal = Mtot + Mbatterij
plot(v, mBat)
