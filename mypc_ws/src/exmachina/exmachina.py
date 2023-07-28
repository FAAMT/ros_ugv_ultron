#!/usr/bin/env python
#license removed for brevity
import rospy
import sys
from std_msgs.msg import String
from sys import stdin
import sys
import getch
import time

def keyboard_input_pub():
    pub = rospy.Publisher('keyboard_input', String, queue_size=1)
    rospy.init_node('exmachina', anonymous=True)
    return pub

def exmachina_init_rate():
    rate = rospy.Rate(1000) # 1hz
    return rate


if __name__ == '__main__':
    pub_0 = keyboard_input_pub()
    rate = exmachina_init_rate()

    try:
        while(1):
                msg = getch.getch()
                if(msg == "" or msg == ""):
                     break
                # print(msg)
                pub_0.publish(msg)
                rospy.loginfo(msg)
                          

    except rospy.ROSInterruptException:
        pass
