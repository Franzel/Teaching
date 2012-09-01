//Based on an example by Kyle Li

void setup() {
  size(500, 500);
  smooth();
  background(50,50,50);
}

void draw() {
  drawCircle(33, 99, 113, 30);
  drawCircle(78, 135, 141, 45);
  drawCircle(254, 243, 230, 60);
  drawCircle(154, 177, 183, 70);
  drawCircle(204, 24, 28, 20);
  drawCircle(255, 211, 60, 80);
  drawCircle(255, 186, 19, 50);
}

void drawCircle(float r, float g, float b, float diam) {
  fill(r, g, b);
  ellipse(random(width), random(height), diam, diam);
}

