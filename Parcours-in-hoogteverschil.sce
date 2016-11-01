// Via dit programma kan een route in hoogteverschillen worden uitgezet, zo nauwkeurig als gewenst.
// Per deel van de route met dezelfde hellingsgraad wordt dan het nodige klimvermogen berekend en opgeteld bij het totale klimvermogen

beginhoogte = input("Beginhoogte")
i = 1
parcours = zeros(1,Afstand)
hellingsgraden = zeros(1,Afstand)

PklimTot = 0

while (i<Afstand)
    deelAfstand = input("Afstand (km)")
    hoogte = input("Hoogteverschil (m)")
    helling = hoogte/deelAfstand
    for j = i : (i+deelAfstand)
        parcours (j) = beginhoogte + ((j-i)*helling)
        hellingsgraden (j) = helling/10;
    end
    i = i+deelAfstand
    beginhoogte = beginhoogte + hoogte
    
    hellingRad = atan(helling/1000)
    Pklim = sin(hellingRad)*Mtot*g*vWens
    PklimTot = PklimTot + Pklim
end
plot(parcours)
