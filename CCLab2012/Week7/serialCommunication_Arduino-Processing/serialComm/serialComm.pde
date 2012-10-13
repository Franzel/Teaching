import processing.serial.*;

Serial port;  //create a serial object
int val; //will store the incoming values

void setup() {
  size(200, 200);
  println(Serial.list()); // print all the ports available
  port = new Serial(this, Serial.list()[0], 9600);  //establish connection and rate
}


void draw() {
  background(255);
  
  if (port.available()>0) { // if we have info on the port
    val = port.read(); // read it
    println(val); // print what we have
  }


  if (val==1) {
    fill(0, 255, 0);
  }
  else {
    fill(255, 0, 0);
  }

  rect (50, 50, 100, 100);
}

