#include <Wire.h>
#include <Stepper.h>
#include <Servo.h>
Servo servo1;
const int stepsPerRevolution = 200; 
Stepper myStepper(stepsPerRevolution, 12,13);    
const int dirA = 12;
const int dirB = 13;
int x1,y1,x2,y2,n,d,a;
byte z1;
void setup() {
Wire.begin(); 
Serial.begin(9600);
servo1.attach(10); 
pinMode(3, OUTPUT);
pinMode(11, OUTPUT);
pinMode(9, OUTPUT);
pinMode(8, OUTPUT);
digitalWrite(3, HIGH);
digitalWrite(11, HIGH);
digitalWrite(9, LOW);
digitalWrite(8, LOW);
myStepper.setSpeed(50);
}
void loop() { 
  while(Serial.available())    
  { 
   x1 = Serial.parseInt();   
   z1 = Serial.parseInt(); 
  if (x1<500){
    a=x1*4;
    myStepper.step(a);
    Serial.println(1);
   }
    if(500<x1&&x1<1000){
      a=-(x1-500)*4; 
      myStepper.step(a);
      Serial.println(1);
      }
      if(999<x1){
      a=x1-1000;
      servo1.write(a);}
      
    }
}
 
