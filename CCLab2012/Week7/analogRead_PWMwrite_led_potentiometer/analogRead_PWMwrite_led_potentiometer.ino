int analogInPin = A0;  //read the sensor value
int analogOutPin = 9;  //use a PWM pin to dim the led

int sensorVal = 0;  // initialize values
int outputVal = 0;  // initialize values

void setup(){
  Serial.begin(9600); // open port
}

void loop(){
  
  sensorVal = analogRead(analogInPin);  // get value from the pin
  
  // since the input range is 0-1023
  // and the output is 0-255
  // we need to map the values
  outputVal = map(sensorVal, 0, 1023, 0, 255);
  
  analogWrite(analogOutPin, outputVal); //write the mapped value to the pin 
  
  delay(1); //just for safety
  
}
