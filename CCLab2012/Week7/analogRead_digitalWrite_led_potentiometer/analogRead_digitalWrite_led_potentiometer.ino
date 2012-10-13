int ledPin = 3;
int potPin = A0;


void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  pinMode(ledPin,OUTPUT);
}

void loop() {
  int sensorValue = analogRead(potPin);
  Serial.println(sensorValue);  // print out the value you read:

  
  //if the potentiometer is below or above the middle value
  if(sensorValue>512){
    digitalWrite(ledPin, HIGH);
  }else{
    digitalWrite(ledPin, LOW);
  }
  
  delay(1);        // delay in between reads for stability
}
