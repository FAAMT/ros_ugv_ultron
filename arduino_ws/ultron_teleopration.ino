/***************************************************************************************
 * ULTRON Robot Control using ROS
 * Author: Fahad Tajiki
 * Date: 29/07/23
 *
 * Description:
 * This Arduino sketch provides control for the ULTRON robot using ROS (Robot Operating System).
 * The robot is controlled via the "keyboard_input" topic, which receives commands for various movements.
 * The code reads the commands from the topic and performs corresponding actions to control ULTRON's movements,
 * such as moving forward, backward, turning left, turning right, rotating left, and rotating right.
 * Motor control is achieved using the L298N motor driver module, and PWM signals are sent to the enable pins (ENA and ENB)
 * to control the speed of the motors.
 *
 * The code also includes meaningful comments for better understanding of the functionality and pinout definitions.
 * Additionally, it initializes the ROS node, subscribes to the "keyboard_input" topic, and starts serial communication.
 *
 * For this code to work properly, you need to install the "ros_lib" package and include the required ROS libraries.
 * Also, make sure to wire the motors and L298N motor driver module correctly according to the pinout definitions.
 ***************************************************************************************/

#include <ros.h>
#include <std_msgs/String.h>
#include <Arduino.h>
#include <HardwareSerial.h>

ros::NodeHandle nh;

/***********************************/
//        Pinout Definitions         //
/***********************************/

// Please note that pin names are based on the L298N motor driver module used in this project.

// Pin Out for Motor 1
const int DC1IN1 = 2;
const int DC1IN2 = 3;
const int DC1IN3 = 5;
const int DC1IN4 = 6;
const int DC1ENA = 4;
const int DC1ENB = 7;

// Pin Out for Motor 2
const int DC2IN1 = 8;
const int DC2IN2 = 9;
const int DC2IN3 = 11;
const int DC2IN4 = 12;
const int DC2ENA = 10;
const int DC2ENB = 13;

std_msgs::String data;
std_msgs::String str_msg;

/************************* Subscriber Callback *****************************
 * This callback function processes messages received from the "keyboard_input" topic.
 * It reads the data received and stores it in the "data" variable.
 *******************************************************************************/
void keyboard_input(const std_msgs::String& key){
  Serial.println("Heard Something");
  data.data = key.data;
}

ros::Subscriber<std_msgs::String> key("keyboard_input", &keyboard_input);

/************************* Movement Control Functions *****************************
 * These functions control ULTRON's movements, such as moving forward, backward, turning left,
 * turning right, rotating left, and rotating right. The motor control is done using PWM signals
 * sent to the motor driver module's enable pins (ENA and ENB), and appropriate input combinations
 * are set for each wheel to achieve the desired movement.
 *******************************************************************************/
// ULTRON Control Functions

// Function to move ULTRON forward
void forward(void) {
  // Set motor speed to maximum
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255);

  // Wheel 1 - Move forward
  digitalWrite(DC1IN1, HIGH);
  digitalWrite(DC1IN2, LOW);

  // Wheel 2 - Move forward
  digitalWrite(DC1IN3, LOW);
  digitalWrite(DC1IN4, HIGH);

  // Wheel 3 - Move forward
  digitalWrite(DC2IN1, HIGH);
  digitalWrite(DC2IN2, LOW);

  // Wheel 4 - Move forward
  digitalWrite(DC2IN3, LOW);
  digitalWrite(DC2IN4, HIGH);
}

// Function to move ULTRON backward
void backward(void) {
  // Set motor speed to maximum
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255);

  // Wheel 1 - Move backward
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, HIGH);

  // Wheel 2 - Move backward
  digitalWrite(DC1IN3, HIGH);
  digitalWrite(DC1IN4, LOW);

  // Wheel 3 - Move backward
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, HIGH);

  // Wheel 4 - Move backward
  digitalWrite(DC2IN3, HIGH);
  digitalWrite(DC2IN4, LOW);
}

// Function to turn ULTRON left
void left(void) {
  // Set motor speed to maximum
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255);

  // Wheel 1 - Move forward
  digitalWrite(DC1IN1, HIGH);
  digitalWrite(DC1IN2, LOW);

  // Wheel 2 - Move backward
  digitalWrite(DC1IN3, HIGH);
  digitalWrite(DC1IN4, LOW);

  // Wheel 3 - Move forward
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, HIGH);

  // Wheel 4 - Move backward
  digitalWrite(DC2IN3, LOW);
  digitalWrite(DC2IN4, HIGH);
}

// Function to turn ULTRON right
void right(void) {
  // Set motor speed to maximum
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255);

  // Wheel 1 - Move backward
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, HIGH);

  // Wheel 2 - Move forward
  digitalWrite(DC1IN3, LOW);
  digitalWrite(DC1IN4, HIGH);

  // Wheel 3 - Move backward
  digitalWrite(DC2IN1, HIGH);
  digitalWrite(DC2IN2, LOW);

  // Wheel 4 - Move forward
  digitalWrite(DC2IN3, LOW);
  digitalWrite(DC2IN4, HIGH);
}

// Function to stop ULTRON
void wait(void) {
  // Set motor speed to zero
  analogWrite(DC1ENA, 0);
  analogWrite(DC1ENB, 0);
  analogWrite(DC2ENA, 0);
  analogWrite(DC2ENB, 0);

  // Stop all wheels
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, LOW);
  digitalWrite(DC1IN3, LOW);
  digitalWrite(DC1IN4, LOW);
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, LOW);
  digitalWrite(DC2IN3, LOW);
  digitalWrite(DC2IN4, LOW);
}

// Function to rotate ULTRON left in place
void rotateleft(void) {
  // Set motor speed to maximum
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255);

  // Wheel 1 - Move forward
  digitalWrite(DC1IN1, HIGH);
  digitalWrite(DC1IN2, LOW);

  // Wheel 2 - Move backward
  digitalWrite(DC1IN3, LOW);
  digitalWrite(DC1IN4, HIGH);

  // Wheel 3 - Move backward
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, HIGH);

  // Wheel 4 - Move forward
  digitalWrite(DC2IN3, HIGH);
  digitalWrite(DC2IN4, LOW);
}

// Function to rotate ULTRON right in place
void rotateright(void) {
  // Set motor speed to maximum
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255);

  // Wheel 1 - Move backward
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, HIGH);

  // Wheel 2 - Move forward
  digitalWrite(DC1IN3, HIGH);
  digitalWrite(DC1IN4, LOW);

  // Wheel 3 - Move forward
  digitalWrite(DC2IN1, HIGH);
  digitalWrite(DC2IN2, LOW);

  // Wheel 4 - Move backward
  digitalWrite(DC2IN3, LOW);
  digitalWrite(DC2IN4, HIGH);
}


/************************* Setup Function *****************************
 * This function sets up the initial configurations for the ULTRON robot.
 * It sets all the required pins to OUTPUT mode for motor control.
 * It initializes the ROS node, subscribes to the "keyboard_input" topic,
 * and starts serial communication.
 *******************************************************************************/
void setup()
{
  pinMode(DC1IN1, OUTPUT);
  pinMode(DC1IN2, OUTPUT);
  pinMode(DC1IN3, OUTPUT);
  pinMode(DC1IN4, OUTPUT);
  pinMode(DC1ENA, OUTPUT);
  pinMode(DC1ENB, OUTPUT);
  pinMode(DC2IN1, OUTPUT);
  pinMode(DC2IN2, OUTPUT);
  pinMode(DC2IN3, OUTPUT);
  pinMode(DC2IN4, OUTPUT);
  pinMode(DC2ENA, OUTPUT);
  pinMode(DC2ENB, OUTPUT);

  // ROS init
  nh.initNode();
  nh.subscribe(key);
  Serial.begin(57600);
}

/************************* Main Loop *****************************
 * In the main loop, the code reads the data received from the "keyboard_input" topic
 * and performs the corresponding action based on the command strings.
 * Appropriate functions are called to control ULTRON's movements, and there are delays
 * for smooth motion control.
 *******************************************************************************/
String move_forward = "w";
String move_backward = "s";
String move_left = "a";
String move_right = "d";
String rotate_right = "e";
String rotate_left = "q";
String stop = "x";
int motion_period = 50;

void loop(){
  Serial.println("Device Active");
  const String input = data.data;
  delay(10);
  
  if (rotate_right.compareTo(input) == 0){
    str_msg.data = "Rotating right!";
    rotateright();
    delay(motion_period / 4);
    wait();
  }
  else if (rotate_left.compareTo(input) == 0){
    str_msg.data = "Rotating left!";
    rotateleft();
    delay(motion_period / 4);
    wait();
  }
  else if (stop.compareTo(input) == 0){
    str_msg.data = "Stopping!";
    wait();
    delay(motion_period);
  }
  else if (move_forward.compareTo(input) == 0){
    str_msg.data = "Moving forward!";
    forward();
    delay(motion_period);
    wait();
  }
  else if (move_backward.compareTo(input) == 0){
    str_msg.data = "Moving backward!";
    backward();
    delay(motion_period);
    wait();
  }
  else if (move_right.compareTo(input) == 0){
    str_msg.data = "Moving right!";
    right();
    delay(motion_period);
    wait();
  }
  else if (move_left.compareTo(input) == 0){
    str_msg.data = "Moving left!";
    left();
    delay(motion_period);
    wait();
  }

  nh.spinOnce();
}
