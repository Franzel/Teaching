class Spot {

  float xPos, yPos;
  float ballSize;
  float ballColor;

  // this are the initial "fields" or parameters for the class.
  // The name "ini" is just a name
  void init() {
    xPos = 100;
    yPos = 100;
    ballSize = 30;
    ballColor = 200;
  }

  // we use display to draw
  // Same here: the name "display" is just a name
  void display() {
    ellipse (xPos, yPos, ballSize, ballSize);
  }
}

