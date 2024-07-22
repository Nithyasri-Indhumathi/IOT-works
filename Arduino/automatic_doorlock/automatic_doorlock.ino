#include<Servo.h>
Servo myservo;
int pos=0;
int data;
void setup(){
  Serial.begin(9600);
  myservo.attach(9);
}
void loop(){
 if (Serial.available()){
    data=Serial.read();
    if (data=='a'){
      for(pos=0;pos<=180;pos+=1){
        myservo.write(pos);
        delay(2);
      }
    }
    if (data=='b'){
      for(pos=180;pos>=0;pos-=1){
        myservo.write(pos);
        delay(2);
      }
    }
  }
}

