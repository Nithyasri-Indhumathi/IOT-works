#include <Servo.h>

Servo servoMotor;
const int servoPin = 9;  // Pin connected to the servo motor

void setup() {
  Serial.begin(9600);    // Start the Serial communication at 9600 baud rate
  servoMotor.attach(servoPin);  // Attach servo motor to the servo pin
  servoMotor.write(90);  // Initialize servo motor to 90 degrees (locked position)
}

void loop() {
  if (Serial.available() > 0) {
    char data = Serial.read();
    if (data == 'a') {
      moveServo(0);  // Move servo to 0 degrees
    } else {
      moveServo(90);  // Move servo to 90 degrees
    }
  }
}

void moveServo(int angle) {
  int currentAngle = servoMotor.read();  // Read the current angle of the servo
  if (currentAngle < angle) {
    for (int pos = currentAngle; pos <= angle; pos++) {
      servoMotor.write(pos);  // Move servo to the desired angle
      delay(15);  // Wait 15ms for the servo to reach the position
    }
  } else {
    for (int pos = currentAngle; pos >= angle; pos--) {
      servoMotor.write(pos);  // Move servo to the desired angle
      delay(15);  // Wait 15ms for the servo to reach the position
    }
  }
}
