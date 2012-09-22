// for a detailed commented code look at distanceReactingSpots example from week 3
// we open the class
class Spot {
  // Variables
  float x;
  float y;
  float mx;
  float my;
  float sz;
  float mouseDist;
  float mouseDistMapped;

  // Constructor
  Spot(float xPos, float yPos, float spotSize) {
    x = xPos;
    y = yPos;
    sz = spotSize;
  }

  // Method 1: update
  void update(float mousePosX, float mousePosY) {
    mx = mousePosX;
    my = mousePosY;
    mouseDist = dist(x, y, mx, my);
    mouseDist = constrain(mouseDist, 0, 200);
    mouseDistMapped = map(mouseDist, 0, 200, 1.5, 0.3);
    
    x += random(-1,1);
    y += random(-1,1);

  }

  // Method 2: draw
  void display() {


    fill(100 + 155*mouseDistMapped, 255 - 100 * mouseDistMapped, 100); // some color fun
    ellipse(x, y, sz * mouseDistMapped, sz * mouseDistMapped); // draw ellipse
  }
} // we close the class

