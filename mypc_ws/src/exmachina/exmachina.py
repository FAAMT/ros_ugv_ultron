#!/usr/bin/env python
#license removed for brevity
import rospy
import sys
from std_msgs.msg import String
from geometry_msgs.msg import Twist
from sys import stdin
import sys
import getch
import time

def keyboard_input_pub():
    pub = rospy.Publisher('keyboard_input', String, queue_size=1)
    rospy.init_node('exmachina', anonymous=True)
    return pub

def twist_msg_pub():
    pub = rospy.Publisher('input_vel', Twist, queue_size=1)
    rospy.init_node('exmachina', anonymous=True)
    return pub

def exmachina_init_rate():
    rate = rospy.Rate(1000) # 1hz
    return rate

def move_forward(publish):
    twist_msg.linear.x = 0.0
    twist_msg.linear.y = -0.25
    twist_msg.linear.z = 0.0

    twist_msg.angular.x = 0.0
    twist_msg.angular.y = 0.0
    twist_msg.angular.z = 0.0
    
    now = rospy.Time.now()
    rate = rospy.Rate(1)

    while rospy.Time.now() < now + rospy.Duration.from_sec(0.25):
        publish.publish(twist_msg)
        rate.sleep()
        
def move_backward(publish):
    twist_msg.linear.x = 0.0
    twist_msg.linear.y = 0.25
    twist_msg.linear.z = 0.0

    twist_msg.angular.x = 0.0
    twist_msg.angular.y = 0.0
    twist_msg.angular.z = 0.0
    
    now = rospy.Time.now()
    rate = rospy.Rate(1)

    while rospy.Time.now() < now + rospy.Duration.from_sec(0.25):
        publish.publish(twist_msg)
        rate.sleep()
        
def move_right(publish):
    twist_msg.linear.x = -0.25
    twist_msg.linear.y = 0.0
    twist_msg.linear.z = 0.0

    twist_msg.angular.x = 0.0
    twist_msg.angular.y = 0.0
    twist_msg.angular.z = 0.0
    
    now = rospy.Time.now()
    rate = rospy.Rate(1)

    while rospy.Time.now() < now + rospy.Duration.from_sec(0.25):
        publish.publish(twist_msg)
        rate.sleep()
        
def move_left(publish):
    twist_msg.linear.x = 0.25
    twist_msg.linear.y = 0.0
    twist_msg.linear.z = 0.0

    twist_msg.angular.x = 0.0
    twist_msg.angular.y = 0.0
    twist_msg.angular.z = 0.0
    
    now = rospy.Time.now()
    rate = rospy.Rate(1)

    while rospy.Time.now() < now + rospy.Duration.from_sec(0.25):
        publish.publish(twist_msg)
        rate.sleep()
        
def rotate_right(publish):
    twist_msg.linear.x = 0.0
    twist_msg.linear.y = 0.0
    twist_msg.linear.z = 0.0

    twist_msg.angular.x = 0.0
    twist_msg.angular.y = 0.0
    twist_msg.angular.z = -0.75

    now = rospy.Time.now()
    rate = rospy.Rate(1)

    while rospy.Time.now() < now + rospy.Duration.from_sec(0.25):
        publish.publish(twist_msg)
        rate.sleep()
        
def rotate_left(publish):
    twist_msg.linear.x = 0.0
    twist_msg.linear.y = 0.0
    twist_msg.linear.z = 0.0

    twist_msg.angular.x = 0.0
    twist_msg.angular.y = 0.0
    twist_msg.angular.z = 0.75

    now = rospy.Time.now()
    rate = rospy.Rate(1)

    while rospy.Time.now() < now + rospy.Duration.from_sec(0.25):
        publish.publish(twist_msg)
        rate.sleep()

def wait(publish):
    twist_msg.linear.x = 0.0
    twist_msg.linear.y = 0.0
    twist_msg.linear.z = 0.0

    twist_msg.angular.x = 0.0
    twist_msg.angular.y = 0.0
    twist_msg.angular.z = 0.0

    now = rospy.Time.now()
    rate = rospy.Rate(1)

    while rospy.Time.now() < now + rospy.Duration.from_sec(0.01):
        publish.publish(twist_msg)
        rate.sleep()

if __name__ == '__main__':
    pub_0 = keyboard_input_pub()
    pub_1 = twist_msg_pub()
    rate = exmachina_init_rate()
 
    twist_msg = Twist()

    try:
        while(1):
                msg = getch.getch()
                if(msg == "" or msg == ""):
                     break
                # print(msg)
                pub_0.publish(msg)
                rospy.loginfo(msg)

                if(msg == "w"):
                   move_forward(pub_1)
                   wait(pub_1)
                   pass
                elif(msg == "s"):
                   move_backward(pub_1)
                   wait(pub_1)
                   pass
                elif(msg == "d"):
                   move_right(pub_1)
                   wait(pub_1)
                   pass
                elif(msg == "a"):
                   move_left(pub_1)
                   wait(pub_1)
                   pass
                elif(msg == "e"):
                   rotate_right(pub_1)
                   wait(pub_1)
                   pass
                elif(msg == "q"):
                   rotate_left(pub_1)
                   wait(pub_1)
                   pass
                else:
                   wait(pub_1)
                   pass

                # pub_1.publish(twist_msg)
                          

    except rospy.ROSInterruptException:
        pass