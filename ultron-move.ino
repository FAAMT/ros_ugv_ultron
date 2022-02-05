// $Id: $
// File name:   ultron-move
// Created:     Dec 2021
// Author:      Fahad Tajiki
// Description: This source code allows communication between the onboard Raspberry Pi and Arduino Mega (ATmega2560)
//              to control the motor drivers via the keyboard on my PC.

#if (ARDUINO >= 100)

#include <Arduino.h>
#else
#include <WProgram.h>
#endif

//***********************************//
//          Header Files             //
//***********************************//
#include <ros.h> //rosserial library 
#include <std_msgs/String.h> // + topics
#include <geometry_msgs/Twist.h> // 

//***********************************//
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

//Some strings that are useful for testing and debugging
//These should print on the chatter topic accordingly.
char strfwd[15] = "Move forward!";
char strbckwd[15] = "Move backward!";
char strright[15] = "Move right.";
char strleft[15] = "Move left.";
char strstp[15] = "Stopping.";
char strrright[15] = "Rotating Right.";
char strrleft[15] = "Rotating Left.";

//***********************************//
//            ROS Setup              //
//***********************************//
std_msgs::String str_msg; //The data type we intend to publish.
ros::NodeHandle  nh; //Node Handle: nh
ros::Publisher chatter("chatter", &str_msg); //Publisher: chatter

//***********************************//
//   DC Motor (100 RPM 2.2 kg-cm )   //
//          Subroutines              //
//***********************************//

void forward(void) {
  //subroutine to move ULTRON forward
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200); 

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
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200); 

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
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200); 

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
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200); 

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

void rotateright(void){
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200); 

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


void rotateleft(void){
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200); 

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

void wait(void) {
 //subroutine to stop ULTRON 
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

//***********************************//
//       ROS Subroutine to           //
//      subscribe to teleop          //
//       Publisher: "Twist"          //
//***********************************//

void velocity(const geometry_msgs::Twist & msg) {
  const float x = msg.linear.x; //Samples X Linear Velocity
  const float y = msg.linear.y; //Samples Y Linear Velocity

  // The rest of the code is control logic to
  // decide on the motor state we need, according to command.

  if(x > 0 && y < 0){
    rotateright();
    str_msg.data = strrright;
    chatter.publish( &str_msg );
  }
  else if(x > 0 && y > 0){
    rotateleft();
    str_msg.data = strrleft;
    chatter.publish( &str_msg );
  }
  else if (x > 0) {
    forward();
    str_msg.data = strfwd;
    chatter.publish( &str_msg );
  }
  else if(x < 0){
    backward();
    str_msg.data = strbckwd;
    chatter.publish( &str_msg );
  }
  else if(y > 0){
    right();
    str_msg.data = strright;
    chatter.publish( &str_msg );
  }
  else if(y < 0){
    left();
    str_msg.data = strleft;
    chatter.publish( &str_msg );
  }
  else{
    wait();
    str_msg.data = strstp;
    chatter.publish( &str_msg );
  }
}

// Allow the above function to accept inputs from the 
// teleop publisher.

ros::Subscriber<geometry_msgs::Twist> sub("velocity", velocity);

// NOTE:
// If you don't know what this is
// it is basically code that accepts keyboard input to
// move your robot around. It is open source and was implemented
// alongside this project.
// I installed it directly from the command line using this command: sudo apt-get install ros-kinetic-teleop-twist-keyboard
// make sure to use the right version for ROS.

//***********************************//
//           Main();                 //
//***********************************//

void setup() {
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
  //Initialize ROS nodes (publishers, subscribers, etc.)
  nh.initNode();
  nh.subscribe(sub);
  nh.advertise(chatter);
}

void loop() {
  //Keep this bad boy running!
  nh.spinOnce();
  delay(1);
}
