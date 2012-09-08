int moveX, moveY;
int changeSize;

void setup() {
  size(500, 500);
  smooth();
  moveX = 100;
  moveY = 50;
  changeSize = 30;
}

void draw() {
  background (0);
  translate(width/2, height/2);

  if(frameCount % 30 == 0) {
    moveX *= -1;
  }
  if(frameCount % 15 == 0) {
    moveY *= -1;
  }
  if(frameCount % 10 == 0) {
    changeSize *= -1;
  }

  ellipse(moveX, moveY, 60 + changeSize, 60 + changeSize);
  println(frameCount + " " + moveX);
}

