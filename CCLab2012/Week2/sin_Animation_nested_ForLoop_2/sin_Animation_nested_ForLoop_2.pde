/*
Just gettin' crazy by tweaking the previous code
Now we animate in x and y
*/

float circleSize;
float angle;
float oscillationX;
float oscillationY;
float xPos, yPos;

void setup(){
  size(600,600);
  smooth();
  xPos = width/2;
  yPos = height/2;

}

void draw(){

  background(0);
  
  for(int x=1; x<12; x++){
    for(int y=1; y<12; y++){
      
      drawCircle(20 + 50 * x, 20 + 50 * y, 0.001 * x * y);
      
    }
  }
  
}

void drawCircle(float xPos, float yPos, float speed){
  
  angle = frameCount * speed; // we use the frameCount to increment the "angle" of the circle
  oscillationX = sin(angle); // the sin and cos funcions returns a number between -1 and 1
  oscillationY = cos(angle);
  
  // we can map that number to 0 to 1, so we get a percentage
  float oscMappedX = map(oscillationX, -1, 1, 0, 1); 
  float oscMappedY = map(oscillationY, -1, 1, 0, 1);
  
  //and use that Pct to animate by size
  ellipse(xPos * oscMappedX, yPos * oscMappedY, 10 , 10 );
  
}

