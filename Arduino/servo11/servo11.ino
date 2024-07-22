#include <Servo.h>

Servo myServo;  // create servo object to control a servo

void setup() {
  myServo.attach(9);  // attaches the servo on pin 9 to the servo object
}

void loop() {
  myServo.write(90);  // sets the servo position to 90 degrees
  delay(1000);        // waits for a second
  myServo.write(0);   // sets the servo position to 0 degrees
  delay(1000);        // waits for a second
}
