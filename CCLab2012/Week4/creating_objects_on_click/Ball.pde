class Ball {
  
  //Variables
    float xPos, yPos;
    color ballColor;
  
  //Constructor
  Ball(float x_, float y_, color c_) {
    xPos = x_;
    yPos = y_;
    ballColor = c_;
  }

  //Method:draw
  void display() {
    fill(ballColor);
    ellipse(xPos, yPos, 100,100);
  }
}

