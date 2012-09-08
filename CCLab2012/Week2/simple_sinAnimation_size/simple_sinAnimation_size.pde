float circleSize;
float angle;
float oscillation;
float xPos, yPos;

void setup(){
  size(600,600);
  smooth();
  xPos = width/2;
  yPos = height/2;

}

void draw(){
  angle = frameCount * 0.1; // we use the frameCount to increment the "angle" of the circle
  oscillation = sin(angle); // the sin and cos funcions returns a number between -1 and 1
  
  // we can map that number to 0 to 1, so we get a percentage
  float oscMapped = map(oscillation, -1, 1, 0, 1); 
  
  println("sin value= " + oscillation + " oscmapped= " + oscMapped);
  
  background(0);
  
  //and use that "percentage" to animate by size
  ellipse(xPos, yPos, 50 * oscMapped, 50 * oscMapped);
  
}
