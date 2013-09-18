#include <Servo.h> 
 Servo hip;
 Servo knee;
 Servo ankle;
 
 
void setup() 
{ 
  hip.attach(3);
  knee.attach(5);
  ankle.attach(6);
  
} 
 
 
void loop() { 
  switch (random(3)) {
    case 1:
    hip.write((random(170)+5));
    break;
    case 2:
    knee.write((random(170)+5));
    break;
    case 3:
    ankle.write((random(170)+5));
}
delay(random(1000));
} 
