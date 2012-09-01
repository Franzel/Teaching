void setup(){
  size(500,500);
  smooth();
}

void draw(){
  drawColorRect(100,100,50,50); // we are calling the function, and passing 4 parameters to it
  drawColorRect(200,100,20,20); // we are using the same function but changing the parameters
}


void drawColorRect(float xPos, float yPos, float w, float h){
  fill(255,0,0);
  rect(xPos, yPos, w, h);
}
