void setup(){
 size(500,500);
 background(255); 
}


void draw(){
  fill (255,0,0);
  rect (0,0,50,50);

  //the translate() function moves the origin from the upper-left corner to a new position
  translate(50,50);
  fill(0,255,0);
  rect(0,0,50,50); //now the 0,0 is in a different position
  
  fill(0,0,255);
  rect(-10, -10, 10, 10);
  
  pushMatrix(); 
  translate (width/2, height/2);
  rotate(radians(45));
  rect(0,0,100,100);
  popMatrix(); //takes back the coordinates to how they were before the pushMatrix
  
  fill(255,255,0);
  rect(0,0,30,30);

}
