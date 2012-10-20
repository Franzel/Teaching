import processing.serial.*;

Serial myPort; // The serial port

void setup () {
  size(400, 400);
  background(0);  // set inital background:  

  println(Serial.list());  // List all the available serial ports
  myPort = new Serial(this, Serial.list()[0], 9600);

  // don't generate a serialEvent() unless you get a newline character:
  myPort.bufferUntil('\n');

}

void draw () {
  // everything happens in the serialEvent()
}

void serialEvent (Serial myPort) {
  String inString = myPort.readStringUntil('\n');  // get the ASCII string:

  if (inString != null) { //if the incoming string is not null (empty)
    // trim off any whitespace:
    inString = trim(inString);

    println(inString); //print the value
    float inByte = float(inString);// convert to a float 
    inByte = map(inByte, 0, 1023, 0, height);//map to the screen height:
    
    // draw the circle:
    background(0);
    ellipse(width/2, height - inByte, 20, 20);
  }
}

