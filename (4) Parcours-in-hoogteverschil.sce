// Via dit programma kan een route in hoogteverschillen worden uitgezet, zo nauwkeurig als gewenst.
// Per deel van de route met dezelfde hellingsgraad wordt dan het nodige klimvermogen berekend en opgeteld bij het totale klimvermogen
// Gebaseerd op programma (3) wordt dan ook die ideale snelheid uitgezet ifv elke hellingsgraad

beginhoogte = input("Beginhoogte")
i = 1
parcours = zeros(1,Afstand)
hellingsgraden = zeros(1,Afstand)

PklimTot = 0

while (i<Afstand)
    deelAfstand = input("Afstand (km)")
    hoogte = input("Hoogteverschil (m)")
    helling = (ceil((hoogte/deelAfstand)*10))/10
    for j = i : (i+deelAfstand)
        parcours (j) = beginhoogte + ((j-i)*helling)
        hellingsgraden (j) = helling/10 //Omdat afstand in km wordt ingegeven
            for k= 1 : length(h)
                if(h(k)== helling)
                    idealeSnelheid = 3.6*v(k)
                end
            end
        idealeSnelheden (j) = idealeSnelheid
    end
    i = i+deelAfstand
    beginhoogte = beginhoogte + hoogte
    
    hellingRad = atan(helling/1000)
    Pklim = sin(hellingRad)*Mtot*g*vWens
    PklimTot = PklimTot + Pklim
end
//plot(parcours)
plot(idealeSnelheden)
