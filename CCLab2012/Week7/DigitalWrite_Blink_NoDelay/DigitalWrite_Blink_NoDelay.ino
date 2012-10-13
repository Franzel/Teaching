int led = 13;          //pin to connect LED
int ledState = LOW;    //initial state (off)    
int currMillis = 0;    //initial time
int prevMillis = 0;    //initial saved time
int interval = 100;    //frequency we want to blink

void setup(){
  
  pinMode(led, OUTPUT); //we set our digital pin to be an output
}

void loop(){

  unsigned long currMillis = millis(); // we use a long because millis accumulate rapidly
  
  if (currMillis - prevMillis > interval){ //if time difference is greater than the interval

    prevMillis = currMillis; // save the current time to prevMillis

    // if the LED is off turn it on and vice-versa
    if(ledState == LOW){
      ledState = HIGH;
    }
    else{
      ledState = LOW;
    }
    
    // write the current state o the pin (and led)
    digitalWrite(led, ledState); 

  }

}







