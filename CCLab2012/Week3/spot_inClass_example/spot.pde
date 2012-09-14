class Spot {
  float x, y, s ,c;
  float ballSize;
  float ballColor;
  float mouseDist;
  float mouseDistMapped;

  //constructor
  Spot(float x_, float y_, float s_, float c_){  
    x = x_;
    y = y_;
    s = s_;
    c = c_;
  }

  void update(float mx, float my){
    mouseDist = dist(mx, my, x, y);
    mouseDistMapped = map(mouseDist, 0, 500, 1, 0);
  }
  
  
  void display(){
    noFill();
    stroke(c);
    ellipse (x, y, s * mouseDistMapped, s * mouseDistMapped);
  }
 
}
