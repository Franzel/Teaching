int xPos;
int yPos;

void setup() {
  size(800, 800);
  xPos = 1;
  yPos = 1;
}

void draw() {

  for (int x=0; x<width ; x+= 10) {
    for (int y=0; y<height ; y+= 10) {
      rect(xPos * x, yPos * y, 5, 5);
    }
  }
}

