int led = 13; //set the LED to pin 13 (digital)

void setup(){
  pinMode(led, OUTPUT); // set the digital pin to output mode
}


void loop(){
  digitalWrite(led, HIGH); //send 5v to the led
  delay(2000);  //wait
  digitalWrite(led, LOW); //send 0v to the LED
  delay(1000); // wait
  
  
}
