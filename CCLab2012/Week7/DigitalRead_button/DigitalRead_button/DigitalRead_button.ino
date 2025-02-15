/*
  DigitalReadSerial
 Reads a digital input on pin 10, prints the result to the serial monitor
 
 This example code is in the public domain.
 */
 
 //We need a 10K resistor(brown,black,orange,gold)

int pushButton = 10;

// the setup routine runs once when you press reset:
void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  // make the pushbutton's pin an input:
  pinMode(pushButton, INPUT);
}

// the loop routine runs over and over again forever:
void loop() {
  // read the input pin:
  int buttonState = digitalRead(pushButton);
  // print out the state of the button:
  Serial.println(buttonState);
  delay(1);        // delay in between reads for stability
}
