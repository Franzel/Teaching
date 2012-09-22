class Ball {
  
  //Properties
    float xPos, yPos;
    color ballColor;
    float ballSize;
    float gravityX, gravityY;
  
  //Constructor
  Ball(float x_, float y_, color c_, float s_) {
    xPos = x_;
    yPos = y_;
    ballColor = c_;
    ballSize = s_;
    gravityX = random(-1.0, 1.0) / 2;
    gravityY = random(-1.0, 1.0) / 2;
  }

  void update() {
    yPos += gravityY;
    xPos += gravityX;
  }

  void display() {
    fill(ballColor);
    noStroke();
    ellipse(xPos, yPos, ballSize,ballSize);
  }
}

