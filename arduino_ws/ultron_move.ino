// Project ULTRON: L298N Test Phase
// Author: Fahad Tajiki
// Date: 07/20/23
// Synopsis: This code is part of the ULTRON project and serves as the L298N motor driver test phase. 
// It demonstrates how to control motors using an Arduino Mega 2560 and the L298N motor driver. The code 
// includes setup instructions for connecting the pins, and it provides functions for moving ULTRON forward, 
// backward, left, right, and for pausing (wait) actions. The test routine showcases the motor functionality 
// with delays between movements, giving a practical insight into the capabilities of the setup.

// Definitions
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

void setup() {
  Serial.begin(9600);
  // Set all pins to output mode
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
  wait();
  // 3s delay
  delay(1500);
  forward();
  // 3s delay
  delay(1500);
  wait();
  delay(1500);
  backward();
  // 3s delay
  delay(1500);
  wait();
  delay(1500);
  left();
  // 3s delay
  delay(1500);
  wait();
  delay(1500);
  right();
  // 3s delay
  delay(1500);
  wait();
  delay(1500);
}

void forward(void) {
  // Subroutine to move ULTRON forward
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200);
  
  // Wheel 1
  digitalWrite(DC1IN1, HIGH);
  digitalWrite(DC1IN2, LOW);

  // Wheel 2
  digitalWrite(DC1IN3, LOW);
  digitalWrite(DC1IN4, HIGH);

  // Wheel 3
  digitalWrite(DC2IN1, HIGH);
  digitalWrite(DC2IN2, LOW);

  // Wheel 4
  digitalWrite(DC2IN3, LOW);
  digitalWrite(DC2IN4, HIGH);
}

void backward(void) {
  // Subroutine to move ULTRON backward
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200);

  // Wheel 1
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, HIGH);

  // Wheel 2
  digitalWrite(DC1IN3, HIGH);
  digitalWrite(DC1IN4, LOW);

  // Wheel 3
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, HIGH);

  // Wheel 4
  digitalWrite(DC2IN3, HIGH);
  digitalWrite(DC2IN4, LOW);
}

void left(void) {
  // Subroutine to turn ULTRON left
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200);

  // Wheel 1
  digitalWrite(DC1IN1, HIGH);
  digitalWrite(DC1IN2, LOW);

  // Wheel 2
  digitalWrite(DC1IN3, HIGH);
  digitalWrite(DC1IN4, LOW);

  // Wheel 3
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, HIGH);

  // Wheel 4
  digitalWrite(DC2IN3, LOW);
  digitalWrite(DC2IN4, HIGH);
}

void right(void) {
  // Subroutine to turn ULTRON right
  analogWrite(DC1ENA, 200);
  analogWrite(DC1ENB, 200);
  analogWrite(DC2ENA, 200);
  analogWrite(DC2ENB, 200);

  // Wheel 1
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, HIGH);

  // Wheel 2
  digitalWrite(DC1IN3, LOW);
  digitalWrite(DC1IN4, HIGH);

  // Wheel 3
  digitalWrite(DC2IN1, HIGH);
  digitalWrite(DC2IN2, LOW);

  // Wheel 4
  digitalWrite(DC2IN3, HIGH);
  digitalWrite(DC2IN4, LOW);
}

void wait(void) {
  // Subroutine to stop ULTRON
  analogWrite(DC1ENA, 0);
  analogWrite(DC1ENB, 0);
  analogWrite(DC2ENA, 0);
  analogWrite(DC2ENB, 0);

  // Wheel 1
  digitalWrite(DC1IN1, LOW);
  digitalWrite(DC1IN2, LOW);

  // Wheel 2
  digitalWrite(DC1IN3, LOW);
  digitalWrite(DC1IN4, LOW);

  // Wheel 3
  digitalWrite(DC2IN1, LOW);
  digitalWrite(DC2IN2, LOW);

  // Wheel 4
  digitalWrite(DC2IN3, LOW);
  digitalWrite(DC2IN4, LOW);
}
