import trajectory as tr
import weather as wh

class cyclist(object):
    '''This class contains everything related to the cyclist'''

    coords_of_ghent = [51.0543, 3.7174] #static, defaults for cyclist's locations so outside of init

    def __init__(self, weight = None, length = None, coords = None, name = None, velocity = None):
        if (weight == None): weight = 80
        if (length == None): length = 1.8
        if (coords == None): coords = self.coords_of_ghent
        if (name == None): name = "default"
        if (velocity == None): velocity = 0
        self.weight = weight
        self.length = length
        self.coords = coords
        self.name = name
        self.velocity = velocity

    def get_weight(self):
        return self.weight
    
    def get_length(self):
        return self.length

    def get_position(self):
        '''returns position of cyclist in coords'''
        return self.coords

    def get_name(self):
        return self.name

    def set_weight(self, weight):
        '''weight of the cyclist in kg'''
        self.weight = weight
        return self.weight

    def set_length(self, length):
        '''length of the cyclist in meter'''
        self.length = length
        return self.length

    def set_position(self, latitude, longitude):
        '''set coords of cyclist'''
        self.coords[0] = latitude
        self.coords[1] = longitude

    def set_name(self, name):
        self.name = name
        return self.name

    def cycle_traject_cv(self, trajectory = None, cv = None):
        '''cycle given trajectory at constant velocity (cv), cv defaults to 20 km/h'''
        if (trajectory == None):
            print("No trajetory given, exiting method ...")
            return -1
        if (cv == None): cv = 20/3.6
        self.velocity = cv
        start = trajectory.get_startPosition()
        compasbearing = trajectory.get_compass_bearing()
        slopes = trajectory.get_slopes(avg_slope_distance = 10)
        for (lat, long) in zip(trajectory.latitudes, trajectory.longitudes):
            pass
        return start
