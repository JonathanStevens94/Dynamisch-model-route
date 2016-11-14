import geopy
from geopy.distance import vincenty

#-----------------Import data----------------
text_file = open("Etappe 1.txt", "r")
lines = text_file.readlines()
#---------------------------------------------

lat_long_alt = [x.split()[1:] for x in lines if (len(x.split()) == 4 and x.split()[0] == 'T')] #get data only if it starts with 'T' and we should check if the list is not empty because otherwise we will get an error when trying to index the empty list in search for 'T'
lat = [float(x[0]) for x in lat_long_alt] #convert string to floating point values
long = [float(x[1]) for x in lat_long_alt]
heights = [float(x[2]) for x in lat_long_alt]
height_diff = [(heights[x] - heights[x-1]) for x in range(1, len(heights))] #we need difference in height for two points since we want the slope between these points


#---------------Calculate distances between lats en longs---------------
start = tuple([lat[0], long[0]])
distances = []

for x in zip(lat[1:], long[1:]):
    distance = vincenty(x, start).meters
    if distance > 0:
        distances.append(distance)
    else:
        distances.append(1e-9) #if we would end up somehow by having twice the same point (can't devide by zero)
    start = x
#-----------------------------------------------------------------------

slopes = [y/x*100 for y,x in zip(height_diff, distances)] #calculate slope in percentages
print(max(slopes), min(slopes)) #check maxima


#-----------make a plot-------------
import matplotlib.pyplot as plt
import numpy as np

plt.plot(np.cumsum(distances)/1000.0, heights[:-1], label=r'height profile')
plt.legend(loc = 'upper right')
plt.show()
plt.plot(np.cumsum(distances), slopes, label=r'Slopes')
plt.legend(loc = 'upper right')
plt.show()
#-----------------------------------
