#!/usr/bin/python2.7
#  Python_tenticle_interface.sh
#  Created by Glen.Searle@eecs.qmul.ac.uk

import serial
Arduino = serial.Serial('/dev/tty.usbmodem1421', 115200)

def send_servo(motor,angle):
#print send_servo(0,0.5)  moves servo0 to 90
    Arduino.flush()
    Arduino.write("G" + str(motor) + " " + str(abs(angle*170+5)))
    return Arduino.readline()


def get_sensor(pin):
    #Reads the analog value on an Arduino pin normalises to a value between 0 and 1.
    Arduino.flush()
    Arduino.write("M" + str(pin) )
    return int(Arduino.readline())/1024.0