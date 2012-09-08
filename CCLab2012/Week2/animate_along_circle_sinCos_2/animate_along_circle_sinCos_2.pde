//This code makes an object move in circles
// this time we are using frameCount to increase our value
// check the other example and you'll see it is the same logic.

float angle;
float speed;
float rad;
float xOrigin, yOrigin;
float xPos, yPos;

void setup(){
  size(600,600);
  frameRate(60);
  smooth();
  rad = 100;
  xOrigin = width/2; 
  yOrigin = height/2;
  
}

void draw(){
  background(0);
  
  xPos = cos(frameCount * 0.05) * rad;
  yPos = sin(frameCount * 0.05) * rad;
  
  ellipse (xOrigin + xPos, yOrigin + yPos, 20,20); 
  
}
