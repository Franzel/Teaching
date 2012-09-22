class Mouth {
  float xPos, yPos;
  float xSize, ySize;
  float normalSizeX, normalSizeY;

  //constructor
  Mouth(float _x, float _y, float _sx, float _sy) {
    xPos = _x;
    yPos = _y;
    xSize = _sx;
    ySize = _sy;
    normalSizeX = _sx;
    normalSizeY = _sy;
  }

  //update and check what key is pressed
  void update(int selectedKey) {
    if (selectedKey==1) {
      xSize = normalSizeX;
      ySize = normalSizeY;
    }
    else if (selectedKey==2) {
      xSize = normalSizeX*2;
      ySize = normalSizeY;
    }
    else {
      xSize = normalSizeX*2;
      ySize = normalSizeY*6;
    }
  }

  //draw
  void draw() {
    fill(0);
    ellipse(xPos, yPos, xSize, ySize);
  }
}

