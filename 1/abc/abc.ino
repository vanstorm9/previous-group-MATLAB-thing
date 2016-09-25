#include <Stepper.h>
const int stepsPerRevolution = 200; 
Stepper myStepper(stepsPerRevolution, 12,13);    
const int dirA = 12;
const int dirB = 13;
void setup() {
pinMode(3, OUTPUT);
pinMode(11, OUTPUT);
pinMode(9, OUTPUT);
pinMode(8, OUTPUT);
digitalWrite(3, HIGH);
digitalWrite(11, HIGH);
digitalWrite(9, LOW);
digitalWrite(8, LOW);
myStepper.setSpeed(80);
}

void loop() {
 myStepper.step(500);
 delay(1000);
 myStepper.step(-500);
 delay(1000);
}
