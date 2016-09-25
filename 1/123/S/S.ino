#include <Servo.h>
Servo servo1;
int x1,z1=0;
void setup() {
pinMode(10, OUTPUT);
pinMode(2, OUTPUT);
pinMode(4, OUTPUT);
pinMode(13, OUTPUT);
servo1.attach(9);
Serial.begin(9600);
digitalWrite(2,LOW);
digitalWrite(4,LOW);
}

void loop() {
 while(Serial.available())    
  { 
   x1 = Serial.parseInt();   
   z1 = Serial.parseInt();  
   if (x1<181){servo1.write(x1);}
   if (x1==181){digitalWrite(13, LOW);}
   if (x1==182){digitalWrite(13, HIGH);}
   if (x1==183){
    analogWrite(10,255);
    digitalWrite(2,HIGH);
    digitalWrite(4,LOW);
    delay(35000);
    digitalWrite(2,LOW);
    digitalWrite(4,LOW);
    }
   if (x1==184){ 
    analogWrite(10,255);
    digitalWrite(4,HIGH);
    digitalWrite(2,LOW);
    delay(35000);
    digitalWrite(4,LOW);
    digitalWrite(2,LOW);}
    Serial.println(1);
  }
}
