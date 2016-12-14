import trajectory as tr
import cyclist as cl
import imp

imp.reload(tr)
imp.reload(cl)

route = tr.traject()
route.importGPSData('./routes/blandijn.txt')
route.get_startPosition()
route.get_slopes()
a = route.get_slopes_traject()
len(a)
len(route.distances)
route.simple_slope_plot()
route.integrated_slope_plot()

auguste = cl.cyclist(weight = 76, name = "Auguste")

auguste.cycle_traject_cv(route)

