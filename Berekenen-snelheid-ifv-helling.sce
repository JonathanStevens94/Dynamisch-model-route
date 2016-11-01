//whBat = Mbatterij * capKg
//vBat = input("Spanning batterij ")
//ahBat = whBat/vBat

//aBatMax = input("Max ontlaadstroom")
//wBatMax = vBat*aBatMax

//inverse functie:
Whbat = input("Wattuur batterij")
h = tan(asin((Ppaneel+Pfietser-Pelek)/(Mtotaal*g)*vOmgekeerd+(Whbat*3.6)/(Afstand*Mtotaal*g)-Crol-(Clucht*RhoLucht*S/(Mtotaal*g))*(v2+2*Vw*v+Vw*Vw)))*100

// Hier willen we de snelheid uitzetten in functie van de hellingsgraad, zodat het verbruikte vermogen - de som van Plucht en Pklim -
// altijd constant blijft en we zo gedurende de hele rit optimale en constante hoeveelheid stroom uit de batterij kunnen trekken.

plot(h,v)

for i= 1 : length(h)
    graad = input("snelheid bij gewenste graad: (%) ")
    if(h(i)== graad)
        disp("m/s",v(i))
    else disp("Hellingsgraad te hoog!")
    end
end
