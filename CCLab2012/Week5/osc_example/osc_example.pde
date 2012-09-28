import oscP5.*;
import netP5.*;

OscP5 osc;
String myMessage;
float myX, myY;

void setup() {
  size(600, 600);
  osc = new OscP5(this, 8000); //start oscP5, listen to incoming messages at port 8000
}

void draw() {
  background(0);
  ellipse (width * myX, height * myY, 20, 20);
}


void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  //  print("### received an osc message.");
  //  print(" addrpattern: "+theOscMessage.addrPattern());
  //  println(" typetag: "+theOscMessage.typetag());

  myMessage = theOscMessage.addrPattern();
  println(myMessage);

  myX = theOscMessage.get(0).floatValue();
  myY = theOscMessage.get(1).floatValue();

  println("x:" + myX);
  println("y"+ myY);
}

