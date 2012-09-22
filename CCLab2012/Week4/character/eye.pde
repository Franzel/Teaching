class Eye {
  float x, y, s, f;  //posx, posy, size, blink frequency
  color c;
  float eyeDistance = 20;

  //constructor. It receives values from outside the class
  Eye(float _x, float _y, float _s, color _c, float _f) {
    //we copy the values coming from outside to our global variables
    x = _x;
    y = _y;
    s = _s;
    c = _c;
    f = _f;
  }

  //draw
  void display() {
    //a small modulo trick to cycle and make the eyes blink
    if (frameCount % f < 8 ) {
        fill(0);
        ellipse (x-eyeDistance, y, s, 2);
        ellipse (x+eyeDistance, y, s, 2); 
    }

    else {
      //left eye
      fill(255);
      ellipse (x-eyeDistance, y, s, s/2); //white

      fill(c);
      noStroke();
      ellipse (x-eyeDistance, y, s/3, s/3); //iris

      fill(0);
      ellipse (x-eyeDistance, y, s/5, s/5); //pupil

      //right eye
      fill(255);
      ellipse (x+eyeDistance, y, s, s/2); //white

      fill(c);
      noStroke();
      ellipse (x+eyeDistance, y, s/3, s/3);//iris

      fill(0);
      ellipse (x+eyeDistance, y, s/5, s/5);//pupil

//      //uncomment this to see a dot in the center for reference
//      fill(255, 0, 0);
//      ellipse(0, 0, 10, 5);
    }
  }
}

