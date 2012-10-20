/*
 * Processing Receiver
 * From Arduino we send values from three sensors
 * using the analog pins
 *
 * CCLab Fall 2012
 * by Francisco Zamorano
 */

import processing.serial.*;

Serial myPort;        // Declare serial port
int [] copiedValues = new int[3]; // make an array that will hold the incoming values

void setup () {
  size(600, 600);        
  myPort = new Serial(this, Serial.list()[0], 9600); // open serial port
  myPort.bufferUntil('\n');   // don't generate a serialEvent() unless you get a newline character:
  background(0);
}

void draw () {
  background(0);
  // For this example we are not mapping the values
  // To make it more useful you would want to map them

  ellipse (copiedValues[0], 100, 20, 20); //use the first value for xPos
  ellipse (copiedValues[1], 200, 20, 20); //use the second value for xPos
  ellipse (copiedValues[2] /2, 300, 20, 20); //use the third value for xPos
}


// For serial communication,we use a special function from the serial library
void serialEvent (Serial myPort) {

  String inString = myPort.readStringUntil('\n');// get the ASCII string, read until we encounter a new line character
  //  println(inString); // print the whole incoming message

  // We do three things here,
  // We split the incoming string when it finds a "," 
  // Copies each splitted string into an array
  // And we convert the string to an int
  int myValueString[] = int(split(inString, ",")); 
  println(myValueString.length);

  if (myValueString.length>2) { //if the array is larger than two

    //print the info in a fancy way
    print(" one :"   + myValueString[0]);
    print(" two :"   + myValueString[1]);
    print(" three :" + myValueString[2]);
    println();

    //now copy those values into our array, so it can be used in the draw()
    for (int i = 0; i<copiedValues.length ;i++) {
      copiedValues[i] = myValueString[i];
    }
  }
}

