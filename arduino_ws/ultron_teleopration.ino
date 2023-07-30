#include <ros.h>
#include <std_msgs/String.h>
#include <Arduino.h>
#include <HardwareSerial.h>

ros::NodeHandle nh;

/***********************************/
//        Pinout Definitions         //
//***********************************//

//Please note that pin names are based on the 
// L298N motor driver module used in this project.

//Pin Out for Motor 1
const int DC1IN1 = 2;
const int DC1IN2 = 3;
const int DC1IN3 = 5;
const int DC1IN4 = 6;
const int DC1ENA = 4;
const int DC1ENB = 7;

//Pin Out for Motor 2
const int DC2IN1 = 8;
const int DC2IN2 = 9;
const int DC2IN3 = 11;
const int DC2IN4 = 12;
const int DC2ENA = 10;
const int DC2ENB = 13;

std_msgs::String data;
std_msgs::String str_msg;

void keyboard_input(const std_msgs::String& key){
  Serial.println("Heard Something");
  data.data = key.data;
}
ros::Subscriber<std_msgs::String> key("keyboard_input", &keyboard_input);

void forward(void){
  //subroutine to move ULTRON forward
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255); 

  //Wheel 1
  digitalWrite(DC1IN1, HIGH);
  digitalWrite(DC1IN2, LOW);

  //Wheel 2
  digitalWrite(DC1IN3,LOW);
  digitalWrite(DC1IN4, HIGH);

  //Wheel 3
  digitalWrite(DC2IN1, HIGH);
  digitalWrite(DC2IN2, LOW);


  //Wheel 4
  digitalWrite(DC2IN3,LOW);
  digitalWrite(DC2IN4, HIGH);

}

void backward(void){
  //subroutine to move ULTRON forward
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255); 

  //Wheel 1
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, HIGH);

  //Wheel 2
  digitalWrite(DC1IN3,HIGH);
  digitalWrite(DC1IN4, LOW);

  //Wheel 3
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, HIGH);


  //Wheel 4
  digitalWrite(DC2IN3,HIGH);
  digitalWrite(DC2IN4, LOW);

}

void left(void){
  //subroutine to move ULTRON forward
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255); 

  //Wheel 1
  digitalWrite(DC1IN1, HIGH);
  digitalWrite(DC1IN2, LOW);

  //Wheel 2
  digitalWrite(DC1IN3,HIGH);
  digitalWrite(DC1IN4, LOW);

  //Wheel 3
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, HIGH);


  //Wheel 4
  digitalWrite(DC2IN3,LOW);
  digitalWrite(DC2IN4, HIGH);

}

void right(void){
  //subroutine to move ULTRON forward
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255); 

  //Wheel 1
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, HIGH);

  //Wheel 2
  digitalWrite(DC1IN3,LOW);
  digitalWrite(DC1IN4, HIGH);

  //Wheel 3
  digitalWrite(DC2IN1, HIGH);
  digitalWrite(DC2IN2, LOW);


  //Wheel 4
  digitalWrite(DC2IN3,HIGH);
  digitalWrite(DC2IN4, LOW);

}

void wait(void){
  //subroutine to move ULTRON forward
  analogWrite(DC1ENA, 0);
  analogWrite(DC1ENB, 0);
  analogWrite(DC2ENA, 0);
  analogWrite(DC2ENB, 0); 

  //Wheel 1
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, LOW);

  //Wheel 2
  digitalWrite(DC1IN3,LOW);
  digitalWrite(DC1IN4, LOW);

  //Wheel 3
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, LOW);


  //Wheel 4
  digitalWrite(DC2IN3,LOW);
  digitalWrite(DC2IN4, LOW);

}

void rotateleft(void){
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255); 

   //Wheel 1
  digitalWrite(DC1IN1, HIGH);
  digitalWrite(DC1IN2, LOW);

  //Wheel 2
  digitalWrite(DC1IN3,LOW);
  digitalWrite(DC1IN4, HIGH);

  //Wheel 3
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, HIGH);

  //Wheel 4
  digitalWrite(DC2IN3,HIGH);
  digitalWrite(DC2IN4, LOW);
}

void rotateright(void){
  analogWrite(DC1ENA, 255);
  analogWrite(DC1ENB, 255);
  analogWrite(DC2ENA, 255);
  analogWrite(DC2ENB, 255); 

 //Wheel 1
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, HIGH);

  //Wheel 2
  digitalWrite(DC1IN3,HIGH);
  digitalWrite(DC1IN4, LOW);

  //Wheel 3
  digitalWrite(DC2IN1, HIGH);
  digitalWrite(DC2IN2, LOW);

  //Wheel 4
  digitalWrite(DC2IN3,LOW);
 
  digitalWrite(DC2IN4, HIGH);
}

void setup()
{
  //Set all pins to output mode
  pinMode (DC1IN1, OUTPUT);
  pinMode (DC1IN2, OUTPUT);
  pinMode (DC1IN3, OUTPUT);
  pinMode (DC1IN4, OUTPUT);
  pinMode (DC1ENA, OUTPUT);
  pinMode (DC1ENB, OUTPUT);
  pinMode (DC2IN1, OUTPUT);
  pinMode (DC2IN2, OUTPUT);
  pinMode (DC2IN3, OUTPUT);
  pinMode (DC2IN4, OUTPUT);
  pinMode (DC2ENA, OUTPUT);
  pinMode (DC2ENB, OUTPUT);

  // ROS init
  nh.initNode();
  nh.subscribe(key);
  Serial.begin(57600);
}

String move_forward  = "w";
String move_backward = "s";
String move_left     = "a";
String move_right    = "d";
String rotate_right  = "e";
String rotate_left   = "q";
String stop          = "x";
int motion_period = 50; 

void loop(){
  Serial.println("Device Active");
  const String input = data.data;
  delay(10);
  if(rotate_right.compareTo(input) == 0){
    str_msg.data = "Rotating right!";
    rotateright();
    delay(motion_period / 4);
    wait();
    }
  else if(rotate_left.compareTo(input) == 0){
    str_msg.data = "Rotating left!";
    rotateleft();
    delay(motion_period / 4);
    wait();
    }
  else if(stop.compareTo(input) == 0){
    str_msg.data = "Stopping!";
    wait();
    delay(motion_period);
    }
  else if(move_forward.compareTo(input) == 0){
    str_msg.data = "Moving forward!";
    forward();
    delay(motion_period);
    wait();
    }
  else if(move_backward.compareTo(input) == 0){
    str_msg.data = "Moving backward!";
    backward();
    delay(motion_period);
    wait();
    }
  else if(move_right.compareTo(input) == 0){
    str_msg.data = "Moving right!";
    right();
    delay(motion_period);
    wait();
    }
  else if(move_left.compareTo(input) == 0){
    str_msg.data = "Moving left!";
    left();
    delay(motion_period);
    wait();
    }
  nh.spinOnce();
}