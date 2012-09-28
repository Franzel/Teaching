/*OSC-minim mashup
 * by Francisco Zamorano
 * CCLab 2012
 * minim functionality based on example by Damien Di Fede "Sine Wave Signal"
 */

//import osc library
import oscP5.*;
import netP5.*;

//import minim library
import ddf.minim.*;
import ddf.minim.signals.*;

OscP5 osc;
String myMessage;
float myX, myY;

Minim minim;
AudioOutput out;
SineWave sine;

void setup() {
  size(600, 600);
  osc = new OscP5(this, 8000); //start oscP5, listen to incoming messages at port 8000

    minim = new Minim(this);
  // get a line out from Minim, default bufferSize is 1024, default sample rate is 44100, bit depth is 16
  out = minim.getLineOut(Minim.STEREO);
  // create a sine wave Oscillator, set to 440 Hz, at 0.5 amplitude, sample rate from line out
  sine = new SineWave(440, 0.5, out.sampleRate());
  // set the portamento speed on the oscillator to 200 milliseconds
  sine.portamento(200);
  // add the oscillator to the line out
  out.addSignal(sine);
}

void draw() {
  background(255*myX, 100, 100);
  ellipse (width * myX, height * myY, 60 - 50 * myY, 60 - 50 * myY);

  float freq = map(myX, 0, 1, 60, 1500);
  sine.setFreq(freq);

  float ampl = map(myY, 0, 1, 1, 0);
  sine.setAmp(ampl);
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

