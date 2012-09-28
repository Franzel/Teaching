import themidibus.*; //Import the library
MidiBus myBus; // The MidiBus

int myValue, myNumber, myPitch, myChannel;
float knobOne, knobTwo, knobOneMap, knobTwoMap;

float v, p;
float angle = 0;

//snake stuff
int num = 100;
float[] xPos = new float[num]; //we declare and create the array
float[] yPos = new float[num]; //we declare and create the array

void setup() {
  size(600, 600);
  myBus = new MidiBus(this, 1, 0); // Create a new MidiBus using the device index to select the Midi input and output devices respectively.
  println(myBus.attachedInputs()); //Print the devices attached as inputs to busA
}

void draw() {
  background(255);

  float myColor = map(p, 36, 66, 0, 1); // get the pressed button MIDI number
  knobOneMap = map(knobOne, 0, 127, 0, 1); //map value for knob1
  knobTwoMap = map(knobTwo, 0, 127, 0, 1); //map value for knob2

  angle += 0.1;
  float x = width/2  + cos(angle) * (250*knobOneMap);
  float y = height/2 + sin(angle) * (250*knobTwoMap);

  for (int i=num-1; i>0; i--) {
    xPos[i] = xPos[i-1] ; //shift all the values to the right in the array
    yPos[i] = yPos[i-1] ; //shift all the values to the right in the array
  }

  xPos[0] = x; //the last position will always be the knob value
  yPos[0] = y; //the last position will always be the knob value

  for (int i=num-1; i>0; i--) {
    stroke(100, 50, 50, 255 - 5*i);
    fill(255 * myColor, 55 + 200 *i, 255 - 255*myColor , 255 - 5*i);
    ellipse(xPos[i], yPos[i], i/2, i/2); // an ellipse that will increase in size
  }
}


void controllerChange(int channel, int number, int value) {
  myNumber=number;
  myChannel = channel;

  if (myNumber==0) {
    knobOne = value;
  }
  if (myNumber==1) {
    knobTwo = value;
  }

  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+myChannel);
  println("Number:"+myNumber);
}

void noteOn(int channel, int pitch, int velocity) {
    v=velocity;
  
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);

}

void noteOff(int channel, int pitch, int velocity) {
  p = pitch;
  v = velocity;

  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
}

