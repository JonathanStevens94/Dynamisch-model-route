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
height_diff = np.array([(heights[x] - heights[x-1]) for x in range(1, len(heights))]) #we need difference in height for two points since we want the slope between these points


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

cum_distances = np.cumsum(distances)

plt.scatter(cum_distances/1000.0, heights[1:], label=r'height profile')
plt.legend(loc = 'upper right')
plt.show()
plt.plot(np.cumsum(distances), slopes, label=r'Slopes')
plt.legend(loc = 'upper right')
plt.show()
#-----------------------------------


#-----------do some smoothing and caculate derivative (as slope)------------
import numpy as np
import matplotlib.pyplot as plt
from scipy import interpolate

x = cum_distances
y = np.cumsum(height_diff)
#determining smoothing factor according to the docs: (m - sqrt(2*m)) * std**2 <= s <= (m + sqrt(2*m)) * std**2 but this gives an horrible over smoothing so I am choosing my own
tck = interpolate.splrep(x, y, s=40)
xnew = np.arange(0, cum_distances[-1], 0.1)
ynew = interpolate.splev(xnew, tck, der=0)
dery =  interpolate.splev(xnew, tck, der=1)

fig, ax1 = plt.subplots()
ax1.plot(xnew, ynew + heights[0], color='black')
ax1.plot(cum_distances, heights[:-1], 'x')

ax2 = ax1.twinx()
ax2.plot(xnew, dery, color='red')

plt.show()

print(ynew)
plt.figure()
plt.plot(x, y, 'x')
plt.plot(xnew, ynew, linewidth=3.0)
plt.legend(['True'])
plt.show()

print("DONE")
#---------------------------------------------------------------------------

fig, ax1 = plt.subplots()
t = np.arange(0.01, 10.0, 0.01)
s1 = np.exp(t)
ax1.plot(t, s1, 'b-')
ax1.plot()
ax1.set_xlabel('time (s)')
# Make the y-axis label and tick labels match the line color.
ax1.set_ylabel('exp', color='b')
for tl in ax1.get_yticklabels():
    tl.set_color('b')


ax2 = ax1.twinx()
s2 = np.sin(2*np.pi*t)
ax2.plot(t, s2, 'r.')
ax2.set_ylabel('sin', color='r')
for tl in ax2.get_yticklabels():
    tl.set_color('r')
plt.show()
