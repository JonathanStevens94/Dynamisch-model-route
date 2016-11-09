from parameters import *
import numpy as np
#Commentaar bij verschillende parameters, uitvoerig documenteren is belanrijk, zeker als we met meerdere samenwerken.

Prol = Crol*Mtotaal*g*vWens
Plucht = 0.5*RhoLucht*S*Clucht*(vWens + Vw)**2*vWens
Pacc = Mtotaal*a*vWens
PklimTot = np.sin(hrad)*Mtotaal*g*vWens
Pverbruik = Prol + Plucht + PklimTot + Pacc
Pbatterij = Pverbruik - Pfietser - Ppaneel

print("De rolweerstand is: {0:>.2f} W".format(Prol))
print("De luchtweerstand is: {0:>.2f} W".format(Plucht))
print("Het klimvermogen is: {0:>.2f} W".format(PklimTot))
print("Het acceleratievermogen is: {0:>.2f} W".format(Pacc))
print("Het totale vermogen is: {0:>.2f} W".format(Pverbruik))


