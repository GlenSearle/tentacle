from glenduino import *
import numpy
import time

# print send_servo(0,0)
# print send_servo(1,0)
# print get_sensor(1)
# print get_sensor(2)
# print send_servo(1,1)
# print send_servo(0,1)

# a = [0]*171
# b = [0]*171
# for i in range(0,171):
# 	# for j in range(0,170):
# 	# 	medians = []
# 	# 	for k in range(0,10):
# 	# 		medians.append(get_sensor)
# 	# 	a[i][j] = 
# 	send_servo(0,(1*i)/170.0)
# 	medians = []
# 	for k in range(0,2):
# 		medians.append(get_sensor(0))
# 		time.sleep(0.01)
# 	print "angle: {0}".format((1*i)/170.0)
# 	print "medians: {0}".format(numpy.median(medians))
# 	a[i] = numpy.median(medians)

# for i in range(0,171):
# 	# for j in range(0,170):
# 	# 	medians = []
# 	# 	for k in range(0,10):
# 	# 		medians.append(get_sensor)
# 	# 	a[i][j] = 
# 	send_servo(1,(1*i)/170.0)
# 	medians = []
# 	for k in range(0,3):
# 		medians.append(get_sensor(1))
# 		time.sleep(0.01)
# 	print "angle: {0}".format((1*i)/170.0)
# 	print "medians: {0}".format(numpy.median(medians))
# 	b[i] = numpy.median(medians)
a = [0.1171875, 0.1171875, 0.1171875, 0.1201171875, 0.1220703125, 0.1240234375, 0.12646484375, 0.12841796875, 0.130859375, 0.1328125, 0.13330078125, 0.13671875, 0.1396484375, 0.1416015625, 0.14306640625, 0.14697265625, 0.1474609375, 0.150390625, 0.15234375, 0.1533203125, 0.1552734375, 0.1572265625, 0.16015625, 0.16162109375, 0.16357421875, 0.1650390625, 0.16796875, 0.1689453125, 0.171875, 0.1748046875, 0.17578125, 0.177734375, 0.1796875, 0.181640625, 0.18408203125, 0.185546875, 0.1875, 0.19091796875, 0.19189453125, 0.1943359375, 0.1962890625, 0.1982421875, 0.2001953125, 0.2021484375, 0.20361328125, 0.20654296875, 0.208984375, 0.21044921875, 0.21240234375, 0.2138671875, 0.2158203125, 0.21875, 0.2197265625, 0.22265625, 0.224609375, 0.2255859375, 0.2275390625, 0.23046875, 0.2314453125, 0.23388671875, 0.23583984375, 0.2373046875, 0.23974609375, 0.24169921875, 0.2431640625, 0.24609375, 0.248046875, 0.25, 0.251953125, 0.25341796875, 0.255859375, 0.2578125, 0.25927734375, 0.26171875, 0.263671875, 0.2646484375, 0.26708984375, 0.2685546875, 0.27099609375, 0.2734375, 0.27490234375, 0.2763671875, 0.27978515625, 0.2802734375, 0.2822265625, 0.2841796875, 0.2861328125, 0.2880859375, 0.2900390625, 0.2919921875, 0.2939453125, 0.2958984375, 0.2978515625, 0.3369140625, 0.29833984375, 0.3037109375, 0.306640625, 0.30859375, 0.310546875, 0.3115234375, 0.3134765625, 0.3154296875, 0.3173828125, 0.31884765625, 0.32080078125, 0.3232421875, 0.32421875, 0.326171875, 0.328125, 0.330078125, 0.33203125, 0.333984375, 0.3359375, 0.337890625, 0.33984375, 0.34130859375, 0.3427734375, 0.3447265625, 0.3466796875, 0.3486328125, 0.3505859375, 0.35205078125, 0.353515625, 0.35546875, 0.357421875, 0.359375, 0.361328125, 0.36328125, 0.365234375, 0.3662109375, 0.369140625, 0.3701171875, 0.37255859375, 0.3740234375, 0.3759765625, 0.3779296875, 0.3798828125, 0.3818359375, 0.3837890625, 0.38525390625, 0.38671875, 0.388671875, 0.390625, 0.39208984375, 0.39404296875, 0.3955078125, 0.3974609375, 0.3994140625, 0.40087890625, 0.40283203125, 0.404296875, 0.40625, 0.408203125, 0.41015625, 0.412109375, 0.4140625, 0.4150390625, 0.4169921875, 0.4189453125, 0.42041015625, 0.42236328125, 0.423828125, 0.42578125, 0.42822265625, 0.42919921875, 0.43115234375, 0.4326171875, 0.43505859375, 0.4365234375, 0.435546875, 0.48388671875]
b=[0.1171875, 0.1171875, 0.1572265625, 0.1220703125, 0.16015625, 0.1259765625, 0.1650390625, 0.166015625, 0.1708984375, 0.171875, 0.1748046875, 0.17578125, 0.1796875, 0.1806640625, 0.181640625, 0.1845703125, 0.1865234375, 0.1875, 0.2001953125, 0.19140625, 0.1943359375, 0.1953125, 0.193359375, 0.2001953125, 0.205078125, 0.2060546875, 0.208984375, 0.2099609375, 0.2138671875, 0.2138671875, 0.216796875, 0.2177734375, 0.21875, 0.22265625, 0.2265625, 0.2294921875, 0.2314453125, 0.2353515625, 0.2314453125, 0.23828125, 0.240234375, 0.2431640625, 0.244140625, 0.248046875, 0.25, 0.2509765625, 0.2548828125, 0.2568359375, 0.2587890625, 0.2587890625, 0.26171875, 0.265625, 0.267578125, 0.2685546875, 0.26953125, 0.2734375, 0.2763671875, 0.2783203125, 0.28125, 0.283203125, 0.2841796875, 0.287109375, 0.2890625, 0.2919921875, 0.294921875, 0.291015625, 0.298828125, 0.298828125, 0.302734375, 0.3056640625, 0.306640625, 0.310546875, 0.3095703125, 0.3125, 0.314453125, 0.3115234375, 0.3173828125, 0.3154296875, 0.3212890625, 0.3251953125, 0.3251953125, 0.328125, 0.359375, 0.3330078125, 0.3330078125, 0.3359375, 0.337890625, 0.33984375, 0.341796875, 0.3447265625, 0.349609375, 0.3486328125, 0.353515625, 0.353515625, 0.3564453125, 0.3583984375, 0.361328125, 0.3623046875, 0.3662109375, 0.3642578125, 0.37109375, 0.3720703125, 0.3740234375, 0.3779296875, 0.3779296875, 0.380859375, 0.3837890625, 0.384765625, 0.388671875, 0.3916015625, 0.3916015625, 0.3955078125, 0.396484375, 0.400390625, 0.4013671875, 0.4033203125, 0.4052734375, 0.41015625, 0.41015625, 0.412109375, 0.4140625, 0.416015625, 0.419921875, 0.419921875, 0.423828125, 0.423828125, 0.4228515625, 0.4306640625, 0.431640625, 0.43359375, 0.4365234375, 0.4375, 0.439453125, 0.4404296875, 0.443359375, 0.4453125, 0.447265625, 0.4501953125, 0.451171875, 0.453125, 0.4560546875, 0.4580078125, 0.4580078125, 0.462890625, 0.4638671875, 0.4658203125, 0.46875, 0.4697265625, 0.4716796875, 0.47265625, 0.4755859375, 0.478515625, 0.4794921875, 0.48046875, 0.4833984375, 0.4833984375, 0.4892578125, 0.490234375, 0.4912109375, 0.494140625, 0.4951171875, 0.498046875, 0.4990234375, 0.5009765625, 0.50390625, 0.505859375, 0.5078125, 0.509765625, 0.513671875, 0.5146484375, 0.517578125]
y_a = numpy.array(a)
y_b = numpy.array(b)
# for j in range(0,171):
# 	for k in range(0,171):
x = numpy.array([i for i in range(0,171)])
A = numpy.vstack([x, numpy.ones(len(x))]).T
m_a, c_a = numpy.linalg.lstsq(A, y_a)[0]
m_b, c_b = numpy.linalg.lstsq(A, y_b)[0]

def get_regressed_value(degree,m,c):
	return m*degree + c

def get_degree_from_regressed_value(value,m,c):
	return (value-c)/m

def explore_space(m_a,c_a,m_b,c_b):
	errors = []
	for i in range(0,20):
		errors.append([0.0 for z in range(0,20)])
	for x_axis in range(0,20):
		for y_axis in range(0,20):
			print "exploring {0}/{1}".format(x_axis,y_axis)
			send_servo(0,x_axis/170.0)
			send_servo(1,y_axis/170.0)
			x_sensor = 0.0
			y_sensor = 0.0
			for i in range(0,5):
				x_sensor += get_sensor(0)
				send_servo(0,x_axis/170.0)
				send_servo(1,y_axis/170.0)
				print "x_sensor:",x_sensor
				y_sensor += get_sensor(1)
				print "y_sensor:",y_sensor
			x_sensor = x_sensor/5.0
			y_sensor = y_sensor/5.0
			errors[x_axis][y_axis] = (abs(x_sensor - get_regressed_value(x_axis,m_a,c_a))+
									abs(y_sensor - get_regressed_value(y_axis,m_b,c_b)))
	return errors

explore_space(m_a,c_a,m_b,c_b)


