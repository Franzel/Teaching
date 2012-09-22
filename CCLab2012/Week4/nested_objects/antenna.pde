class Antenna {

  float xPos, yPos;
  float antLength;
  float rot;
  color antColor;

  Antenna(float x_, float y_, float l_, float r_, color c_) {
    xPos = x_;
    yPos = y_;
    antLength = l_;
    rot = r_;
    antColor = c_;
  }

  void update(float x_, float y_ ) {
    xPos = x_;
    yPos = y_;
  }

  void display() {
    pushMatrix();
    translate(xPos, yPos);
    rotate(rot);
    stroke(antColor);
    line(0, 0, antLength, 0);
    popMatrix();
  }
}

