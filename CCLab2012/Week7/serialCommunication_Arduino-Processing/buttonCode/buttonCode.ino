
//Connecting to Processing via Serial
//For the button we need a 10K resistor(brown,black,orange,gold)

int pushButton = 4; // button connected to digital pin 4

void setup() {

  Serial.begin(9600);   // initialize serial communication at 9600 bits per second:
  pinMode(pushButton, INPUT);  // make the pushbutton's pin an input:
}

void loop() {

  int buttonState = digitalRead(pushButton);   //read the state of the button

    if (buttonState == HIGH){
    Serial.write(1); //we send a byte number to the serial port
  }

  if (buttonState == LOW){
    Serial.write(2); //we send a byte number to the serial port
  }


  //Serial.println(buttonState);  //comment this before connecting to Processing so we don't overload the port 
  delay(100);

}


