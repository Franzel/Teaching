int led = 13; //led pin
int button = 10; //button pin
int val = 0;  //we will store a vlaue here

 //We need a 10K Ω resistor(brown,black,orange,gold) for the button
 //We need a 220 Ω resistor(red,red,brown,gold) for the LED

void setup(){
  Serial.begin(9600); //open the serial port
  pinMode(led, OUTPUT);  //set led pin to output
  pinMode(button, INPUT); //set button pin to input
}

void loop(){
  val = digitalRead(button); //get value from the button (0 or 1)

  if(val==0){
    digitalWrite(led,LOW); 
  }
  else{
    digitalWrite(led,HIGH); 
  }
  
  Serial.println(val); //print to the serial monitor, just to see
}

