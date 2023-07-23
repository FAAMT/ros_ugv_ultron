// Project ULTRON: L298N Test Phase
// Author: Fahad Tajiki
// Date: 07/20/23
// Synopsis: This code is part of the ULTRON project and serves as the L298N motor driver test phase. 
// It demonstrates how to control motors using an Arduino Mega 2560 and the L298N motor driver. The code 
// includes setup instructions for connecting the pins, and it provides functions for moving ULTRON forward, 
// backward, left, right, and for pausing (wait) actions. The test routine showcases the motor functionality 
// with delays between movements, giving a practical insight into the capabilities of the setup.

// Project ULTRON: L298N Test Phase

// Definitions for Motor Pins
const int DC1IN1 = 2;  // Motor 1, Input 1
const int DC1IN2 = 3;  // Motor 1, Input 2
const int DC1IN3 = 5;  // Motor 1, Input 3
const int DC1IN4 = 6;  // Motor 1, Input 4
const int DC1ENA = 4;  // Motor 1, Enable A
const int DC1ENB = 7;  // Motor 1, Enable B

const int DC2IN1 = 8;  // Motor 2, Input 1
const int DC2IN2 = 9;  // Motor 2, Input 2
const int DC2IN3 = 11; // Motor 2, Input 3
const int DC2IN4 = 12; // Motor 2, Input 4
const int DC2ENA = 10; // Motor 2, Enable A
const int DC2ENB = 13; // Motor 2, Enable B

void setup() {
  Serial.begin(9600);
  // Set all motor pins as outputs
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
}

void loop() {
  // Test Routine
  wait();              // Stop the motors
  delay(3000);         // Delay 3 seconds

  forward();           // Move ULTRON forward
  delay(3000);         // Delay 3 seconds

  wait();              // Stop the motors
  delay(3000);         // Delay 3 seconds

  backward();          // Move ULTRON backward
  delay(3000);         // Delay 3 seconds

  wait();              // Stop the motors
  delay(3000);         // Delay 3 seconds

  left();              // Turn ULTRON left
  delay(3000);         // Delay 3 seconds

  wait();              // Stop the motors
  delay(3000);         // Delay 3 seconds

  right();             // Turn ULTRON right
  delay(3000);         // Delay 3 seconds

  wait();              // Stop the motors
  delay(3000);         // Delay 3 seconds
}

// Function to move ULTRON forward
void forward(void) {
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200);

  // Set appropriate input combinations for each wheel to move forward
  digitalWrite(DC1IN1, HIGH);
  digitalWrite(DC1IN2, LOW);
  digitalWrite(DC1IN3, LOW);
  digitalWrite(DC1IN4, HIGH);
  digitalWrite(DC2IN1, HIGH);
  digitalWrite(DC2IN2, LOW);
  digitalWrite(DC2IN3, LOW);
  digitalWrite(DC2IN4, HIGH);
}

// Function to move ULTRON backward
void backward(void) {
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200);

  // Set appropriate input combinations for each wheel to move backward
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, HIGH);
  digitalWrite(DC1IN3, HIGH);
  digitalWrite(DC1IN4, LOW);
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, HIGH);
  digitalWrite(DC2IN3, HIGH);
  digitalWrite(DC2IN4, LOW);
}

// Function to turn ULTRON left
void left(void) {
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200);

  // Set appropriate input combinations for each wheel to turn left
  digitalWrite(DC1IN1, HIGH);
  digitalWrite(DC1IN2, LOW);
  digitalWrite(DC1IN3, HIGH);
  digitalWrite(DC1IN4, LOW);
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, HIGH);
  digitalWrite(DC2IN3, LOW);
  digitalWrite(DC2IN4, HIGH);
}

// Function to turn ULTRON right
void right(void) {
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200);

  // Set appropriate input combinations for each wheel to turn right
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, HIGH);
  digitalWrite(DC1IN3, LOW);
  digitalWrite(DC1IN4, HIGH);
  digitalWrite(DC2IN1, HIGH);
  digitalWrite(DC2IN2, LOW);
  digitalWrite(DC2IN3, HIGH);
  digitalWrite(DC2IN4, LOW);
}

// Function to stop ULTRON
void wait(void) {
  analogWrite(DC1ENA, 0);
  analogWrite(DC1ENB, 0);
  analogWrite(DC2ENA, 0);
  analogWrite(DC2ENB, 0);

  // Set all input combinations for each wheel to stop
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, LOW);
  digitalWrite(DC1IN3, LOW);
  digitalWrite(DC1IN4, LOW);
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, LOW);
  digitalWrite(DC2IN3, LOW);
  digitalWrite(DC2IN4, LOW);
}
