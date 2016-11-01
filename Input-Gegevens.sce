clear all

Crol = input("Crol?")
Mfietser = input("Massa fietser? (kg) ")
Mframe = input("Massa frame? (kg) ")
Mmateriaal = input("Massa materiaal? (kg) ")
Mpaneel = input("Massa paneel? (kg) ")
Mmotor = input("Massa motor en controller? (kg) ")
g = 9,81

Mtot = Mfietser + Mframe + Mmateriaal + Mpaneel + Mmotor

RhoLucht = input("Dichtheid lucht? (kg/m3) ")
S = input("Frontaal oppervlak fietser? (m2)")
Clucht = input("Clucht? ")
Vw = input("Tegenwind? (m/s)")

h = input("Hellingsgraad? (%)")
hrad = atan(h/100)

a = input("Versnelling? (m/s2)")

Pelek = input("Vermogen elektronica? (W)")
Ppaneel = input("Vermogen paneel? (Wp)")
Psfietser = input("Specifiek vermogen fietser? (W/kg)")
Pfietser = Mfietser*Psfietser
capKg = input("Specifiek vermogen batterij? (Wh/kg)")

Nmotor = input("Rendement motor? ")
Ngen = input("Rendement aandrijving? ")

Afstand = input("Afstand etappe? (km)")
