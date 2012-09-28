/* atan2 example
 * by Francisco Zamorano
 * CClab 2012
 *
 * Atan2 is a simple function that returns the angle (in radians) between two points
 * Similar to what we've been doing with sin/cos but backwards
 * This could also be calculated using pythagoras, but atan2 makes it easier
 */

float refPointX, refPointY;
PFont font;

void setup() {
  size(600, 600);
  font = loadFont("SansSerif-20.vlw");
  
  //create a ref point
  refPointX = width/2;
  refPointY  = height/2;
}

void draw() {
  background(0);
  
  //This is the way to use atan2. Note how we write the Y coordinates first
  float angle = atan2(mouseY-refPointY, mouseX-refPointX);
  
  pushMatrix();//this is optional, but always good if you want to rotate just one element
  translate(refPointX, refPointY); //just to draw from the center
  rotate(angle); //we rotate using the angle obtained from atan2 function
  rectMode(CENTER); // draw rect from the center
  rect(0, 0, 40, 50); 
  stroke(255);
  line(0,0,40,0);
  popMatrix();

  ellipse(mouseX, mouseY, 10, 10); // draw a point on the mousePos
  
  //Show info
  textFont(font, 20);
  String myAngle = str(angle); //convert the angle in radians to a string (text)
  String myAngleDeg = str(degrees(angle));//convert the angle in degrees to a string (text)
  text("angle(radians): " + myAngle,10,40);
  text("angle(degrees): " + myAngleDeg,10,80);

}

