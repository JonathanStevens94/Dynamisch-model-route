//whBat = Mbatterij * capKg
//vBat = input("Spanning batterij ")
//ahBat = whBat/vBat

//aBatMax = input("Max ontlaadstroom")
//wBatMax = vBat*aBatMax

//inverse functie:
Whbat = input("Wattuur batterij")
h = tan(asin((Ppaneel+Pfietser-Pelek)/(Mtotaal*g)*vOmgekeerd+(Whbat*3.6)/(Afstand*Mtotaal*g)-Crol-(Clucht*RhoLucht*S/(Mtotaal*g))*(v2+2*Vw*v+Vw*Vw)))*100


plot(h,v)

for i= 1 : length(h)
    graad = input("snelheid bij gewenste graad: (%) ")
    if(h(i)== graad)
        disp("m/s",v(i))
    else disp("Hellingsgraad te hoog!")
    end
end
