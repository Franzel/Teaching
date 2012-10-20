/*
 * Based on code from Lucky Larry
 * http://luckylarry.co.uk/arduino-projects/using-processing-to-send-values-to-arduino/
 * And from Ryan Raffa
 */

// create an array of PWM digital pins
int ledPin[] = {9,10,11};

// values from Processing via serial port, an array of 3 values
int incomingByte[3]; 
 
void setup() {
  // initialize serial communication
  Serial.begin(9600);
 
 //set all the pins to output using a for loop
  for (int i=0; i<3; i++) {
    pinMode(ledPin[i], OUTPUT);
  }
}

 
void loop() {

  if (Serial.available() >= 3) { // if there are at least 3 messages
    for (int i=0; i<3; i++) {
      incomingByte[i] = Serial.read();  //get the current value in i
      analogWrite(ledPin[i], incomingByte[i]); //output to the corresponding led pin
    }
  }
  
  delay(1); //safety
 
}

