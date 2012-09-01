float xPos, yPos;

void setup() {
  size(500, 500);
  xPos = 10;
  yPos = 10;
}

void draw() {
  background(0);
  rect(xPos, yPos, 20, 20);
  
  if(mousePressed){
   modifyPosition(5, 5); //modify this values to change speed
  }
}

//functions can not only be used to draw stuff, but to perform operations or whatever we want
void modifyPosition (float addX, float addY) {
  xPos += addX;
  yPos += addY;
}


