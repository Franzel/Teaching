int ledPin = 11;
int inputValue = 0;

void setup(){
 Serial.begin(9600);
 pinMode(ledPin, OUTPUT);
  
}

void loop(){
  
  if(Serial.available()>0){
    inputValue = Serial.read();
    
    analogWrite(ledPin, inputValue);
  } 
}
