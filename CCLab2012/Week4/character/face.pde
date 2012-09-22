class Face {
  float x, y, sx, sy;
  color c;
  
  //constructor
  Face(float _x, float _y, float _sx, float _sy, color _c) {
    x = _x;
    y = _y;
    sx = _sx;
    sy = _sy;
    c = _c;
  }

  //draw
  void display() {
    fill(c);
    noStroke();
    ellipse(x,y,sx,sy);
  }
}

