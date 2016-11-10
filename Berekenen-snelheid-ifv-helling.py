#-----------Depricated-----------

from parameters import *
import numpy as np
import matplotlib.pyplot as plt


execfile("Berekenen-Massa-Batterij.py")

h = (np.ceil(10*(np.tan(np.arcsin((Ppaneel+Pfietser-Pelek)/(Mtotaal*g)*vOmgekeerd+(Whbat*3.6)/(Afstand*Mtotaal*g)-Crol-(Clucht*RhoLucht*S/(Mtotaal*g))*(v2+2*Vw*v+Vw*Vw)))*100)))/10.0
g

plt.plot(v, h)
plt.show()

#graad met input weggelaten

