int rad = 200;
int ballSize = 20;

void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  background(0);
  translate(width/2, height/2);

  for ( int inc=0; inc < 360; inc +=10) {
    //we use the increment to add to the angle
    //every frame it will be incremented by 10
    float angle = radians(inc); //converting radians to degrees
    float x = cos(angle) * rad;
    float y = sin (angle) * rad;
    noStroke();
    ellipse (x, y, ballSize, ballSize);
  }
}

