import processing.serial.*;

Serial port; // create a port
int val = 0;

void setup(){
  size(500,500);
  println(Serial.list()); // just to check all the available ports
  port = new Serial(this, Serial.list()[0], 9600); //open the port in [0]
}

void draw(){
  // map mouseY to 0-255, inverted
  // we use the int() to convert the result o an int
  // remember that the map function always returns a float
  val = int (map(mouseY, height, 0, 0, 255)); 
                                            
  port.write(val); //send val to the port
}


