void setup(){
  size(400,400);
  
}

void draw(){
  rect(0,0,20,20); // we draw normally
  
  pushMatrix(); //we start the 
  translate(width/2,height/2); //we translate to the midle of screen
  rotate(radians(45)); //rotation takes radians as default
  rect(0,0,10,10); //note how the new 0,0 is now on the center
  popMatrix();//we exit our transformation, getting back to the previous state
  
  rect(20,0,40,40); // we draw normally again
}
