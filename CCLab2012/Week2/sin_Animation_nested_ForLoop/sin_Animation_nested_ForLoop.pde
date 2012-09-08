/*combining sin animation with for loops and a custom function*/

float circleSize;
float angle;
float oscillation;
float xPos, yPos;

void setup() {
  size(600, 600);
  smooth();
  xPos = width/2;
  yPos = height/2;
}

void draw() {
  background(0);

  for (int x=0; x<12; x++) {
    for (int y=0; y<12; y++) {
      drawCircle(20 + 50 * x, 20 + 50 * y, 0.001 * x * y );
    }
  }
  
}

void drawCircle(float xPos, float yPos, float speed) {
  angle = frameCount * speed; // we use the frameCount to increment the "angle" of the circle
  oscillation = sin(angle); // the sin and cos funcions returns a number between -1 and 1

  // we can map that number to 0 to 1, so we get a percentage
  float oscMapped = map(oscillation, -1, 1, 0, 1); 

  //and use that Pct to animate by size
  ellipse(xPos, yPos, 5 + 15 * oscMapped, 5 + 15 * oscMapped);
}

