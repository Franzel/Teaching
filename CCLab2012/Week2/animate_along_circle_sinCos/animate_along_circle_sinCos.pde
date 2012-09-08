float radius = 100;
float angle = 0;

void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(100);
  translate(width/2, height/2);

  angle += 0.01; //we increment angle value

  // sin returns a number btwn -1 and 1, we can multiply that by the radius
  // so we're basically mapping (-1 to 1) to (-radius to radius)
  float x = cos(angle) * radius; 
  float y = sin(angle) * radius;

  println(cos(angle)); //look at the values

  //draw a reference circle
  noFill();
  stroke(150);
  ellipse(0,0,radius*2, radius*2); 

  //draw our sattelite and line to center
  fill(255);
  stroke(0);
  ellipse (x, y, 20, 20); 
  line(x,y,0,0); 

}

