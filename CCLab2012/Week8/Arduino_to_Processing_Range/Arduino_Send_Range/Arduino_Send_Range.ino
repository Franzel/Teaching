void setup() {
  Serial.begin(9600); // open serial port
}
 
void loop() {
  // Print to serial port the incoming value from Analog pin 0
  // Pin A0 is connected to a potentiometer (or other sensor)
  // It will be a value ranging 0 - 1023
  Serial.println(analogRead(A0)); 
  
  delay(2); // safety
}
 
