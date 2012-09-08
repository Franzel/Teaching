float angle;
float speed;
float rad;
float xOrigin, yOrigin;
float xPos;

void setup(){
  size(600,600);
  rad = 100;
  xOrigin = width/2;
  yOrigin = height/2;
}

void draw(){
  background(0);
  //in this case we're just using the sin
  //because we are animatin just one axis
  
  
  //we are using the (-1 to 1) that sin returns and multiplying it by the radius
  //we use frameCount in this case just to make the angle used in the sin calculation grow
  xPos = sin(frameCount * 0.05) * rad; 
  ellipse (xOrigin + xPos, yOrigin + angle, 20,20); 
  
}
