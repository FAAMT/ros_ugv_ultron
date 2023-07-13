#!/usr/bin/env python3
import serial
if __name__ == '__main__':
    ser = serial.Serial('/dev/ttyACM0', 57600, timeout=10)
    ser.reset_input_buffer()
    while True:
        if ser.in_waiting > 0:
            line = ser.readline()
            print(line)