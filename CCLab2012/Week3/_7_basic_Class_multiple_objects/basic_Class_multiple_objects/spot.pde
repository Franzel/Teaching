class Spot {
  float xPos, yPos;
  float sizeX, sizeY;
  float ballSize;
  float ballColor;

  void init() {
    xPos = 100;
    yPos = 100;
    ballSize = 30;
    ballColor = 255;
  }

  void display() {
    fill(ballColor);
    ellipse (xPos, yPos, ballSize, ballSize);
  }
}

