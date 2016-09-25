#include <Wire.h>
#include <Servo.h>
Servo servo1;
int dirPin = 6;
int stepperPin = 7;
int x1,y1,a=0;
int n=0;
byte z1;
byte dd;
int y_now,y_move=0;
void setup() {
Wire.begin(); 
servo1.attach(13);
Serial.begin(9600);
pinMode(6, OUTPUT);
pinMode(7, OUTPUT);
}
void step(boolean dir,int steps){
 digitalWrite(dirPin,dir);
 delay(50);
 for(int i=0;i<steps;i++){
   digitalWrite(stepperPin, HIGH);
   delayMicroseconds(600);
   digitalWrite(stepperPin, LOW);
   delayMicroseconds(600);
 }}
 void step1(boolean dir,int steps){
 digitalWrite(dirPin,dir);
 delay(50);
 {for(int i=0;i<steps;i++){
   digitalWrite(stepperPin, HIGH);
   delayMicroseconds(1800);
   digitalWrite(stepperPin, LOW);
   delayMicroseconds(1800);}
}}
 void step2(boolean dir,int steps){
 digitalWrite(dirPin,dir);
 delay(50);
 {for(int i=0;i<steps;i++){
   digitalWrite(stepperPin, HIGH);
   delayMicroseconds(1200);
   digitalWrite(stepperPin, LOW);
   delayMicroseconds(1200);}
}}
void loop() { 
  while(Serial.available())    
  { 
   x1 = Serial.parseInt();   
   z1 = Serial.parseInt();  
   if( 0<x1&&x1<500){
   a=x1*8;
  step(true,a);
  Serial.println(1);
   }
   if (500<x1&&x1<1000){
   a=(x1-500)*8;
   step(false,a);
   Serial.println(1);
   }
   if (999<x1&&x1<1200){
   a=x1-1000;
   servo1.write(a);
    Serial.println(1);
   }
   if (1997<x1&&x1<2200){
    a=x1-1998;
   dd=a;
   Wire.beginTransmission(4); 
   Wire.write(dd);
   Wire.endTransmission(); 
   }
   if(2200<x1&&x1<2400){
   a=(x1-2200)*8;
   step1(false,a);
    Serial.println(1);
   }
    if(3000<x1&&x1<3500){
   a=(x1-3000)*8;
   step2(true,a);
    Serial.println(1);
   }
    if(3499<x1&&x1<4000){
   a=(x1-3500)*8;
   step2(false,a);
    Serial.println(1);
   }
   delay(100); 
   
}}
