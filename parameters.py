#alle parameters worden bijgehouden in deze file, ik denk dat het beter is om deze niet telkens te moeten opvragen zoals het geval bij het scilab programma

import numpy as np

#---------------Constants--------------
g = 9.81
#--------------------------------------


#---------------Parameters-------------
#Graag aanvullen + korte beschrijving van wat de parameter is
Crol =  0.1 	    #Aan te vullen
Mfietser =  0.1     #Aan te vullen
Mframe =  0.1 	    #Aan te vullen
Mmateriaal =  0.1   #Aan te vullen
Mpaneel =  0.1 	    #Aan te vullen
Mmotor =  0.1 	    #Aan te vullen
RhoLucht =  0.1     #Aan te vullen
S =  0.1 	    #Aan te vullen
Clucht =  0.1 	    #Aan te vullen
Vw =  0.1 	    #Aan te vullen
h =  0.1 	    #Aan te vullen
a =  0.1 	    #Aan te vullen
Pelek =  0.1 	    #Aan te vullen
Ppaneel =  0.1 	    #Aan te vullen
Psfietser =  0.1    #Aan te vullen
capKg =  0.1 	    #Aan te vullen
Nmotor =  0.1 	    #Aan te vullen
Ngen =  0.1 	    #Aan te vullen
Afstand =  0.1 	    #Aan te vullen
wensSnelheid = 0.1  #Aan te vullen
Whbat = 0.1         #Aan te vullen
#--------------------------------------


#---------------Calculated values-------------
Mtot = Mfietser + Mframe + Mmateriaal + Mpaneel + Mmotor
Pfietser = Mfietser*Psfietser
hrad = np.arctan(h/100)
#---------------------------------------------
