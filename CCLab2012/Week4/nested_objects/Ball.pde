class Ball {

  //Properties
  float xPos, yPos;
  color ballColor;
  float ballSize;
  float gravityX, gravityY;

  // Let's create Antennas inside of it
  Antenna [] ant = new Antenna[10];

  //Constructor
  Ball(float x_, float y_, color c_, float s_) {
    xPos = x_;
    yPos = y_;
    ballColor = c_;
    ballSize = s_;
    gravityX = random(-1.0, 1.0);
    gravityY = random(-1.0, 1.0);

    //note how in the constructor, when we create a Ball object, we create a bunch of antennas objects
    for (int i=0;i<ant.length;i++) {
      ant[i]= new Antenna(xPos, yPos, ballSize/2 + random(30), radians(36)*i, c_);
    }
  }

  //update
  void update() {
    yPos += gravityY;
    xPos += gravityX;

    for (int i=0;i<ant.length;i++) {
      ant[i].update(xPos, yPos);
    }
  }

  //draw
  void display() {
    
    //draw circle
    fill(ballColor);
    noStroke();
    ellipse(xPos, yPos, ballSize, ballSize);
    
    //draw antennas
    for (int i=0;i<ant.length;i++) {
      ant[i].display();
    }
  }
}

