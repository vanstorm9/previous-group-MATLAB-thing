#include <Servo.h>
#include <Wire.h>
Servo servo1;
int x1,z1,a=0;
String comdata="";
void setup() {
Wire.begin(4); 
Wire.onReceive(receiveEvent);
pinMode(13, OUTPUT);
servo1.attach(9);
Serial.begin(9600);
}

void loop() {}
void receiveEvent(int howMany){
 while(Wire.available())    
  { 
  byte x11=Wire.read(); 
   x1=x11;
    Serial.println(x1);
   if (x1==0)
    {digitalWrite(13, LOW);}
    if(x1==1)
    {digitalWrite(13, HIGH);}
    if (x1>1)
    {a=x1-2;
      servo1.write(a);}
    Serial.println(1);
    delay(100);
  }
}
