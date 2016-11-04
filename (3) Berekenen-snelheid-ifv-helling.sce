//whBat = Mbatterij * capKg
//vBat = input("Spanning batterij ")
//ahBat = whBat/vBat

//aBatMax = input("Max ontlaadstroom")
//wBatMax = vBat*aBatMax

// Hier willen we de snelheid uitzetten in functie van de hellingsgraad, zodat het verbruikte vermogen - de som van Plucht en Pklim -
// altijd constant blijft en we zo gedurende de hele rit optimale en constante hoeveelheid stroom uit de batterij kunnen trekken.

Whbat = input("Wattuur batterij")
h = (ceil(10*(tan(asin((Ppaneel+Pfietser-Pelek)/(Mtotaal*g)*vOmgekeerd+(Whbat*3.6)/(Afstand*Mtotaal*g)-Crol-(Clucht*RhoLucht*S/(Mtotaal*g))*(v2+2*Vw*v+Vw*Vw)))*100)))/10
gevonden = 0

plot(v,h)

graad = input("snelheid bij gewenste graad: (%) ")
for i= 1 : length(h)
    if(h(i)== graad)
        disp("km/h",(v(i)*3.6))
        gevonden = 1
    end
end
if gevonden == 0 then
    disp("Hellingsgraad te hoog")
end

