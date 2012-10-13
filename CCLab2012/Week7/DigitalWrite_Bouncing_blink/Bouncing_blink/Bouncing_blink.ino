int led = 13;
int currInterval = 10;
int addInterval = 5;

void setup(){
  //we start the serial port to be able to print
  //9600 is the speed at which we are communicating with the board
  Serial.begin(9600);
  pinMode(led, OUTPUT); //we set our digital pin to be an output
}

void loop(){
  digitalWrite(led, HIGH); //we tell our pin to be "on"
  delay(currInterval); //we use delay to wait a certain amount of time before reading the next line
  digitalWrite(led, LOW); //we tell our pin to be "off"
  delay(currInterval);
  currInterval= currInterval + addInterval;

  //this is the bouncing code. We switch from positive to negative
  if (currInterval < 2 || currInterval > 100){
    addInterval = addInterval * -1;
  } 

  //this is the way to print, click serial monitor (upper-right corner) to open the console
  Serial.println(currInterval); 
}






