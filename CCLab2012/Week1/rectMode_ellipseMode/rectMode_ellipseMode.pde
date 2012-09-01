void setup() {
  size(600, 600); // we setup window size
  smooth(); //turn on anti-aliasing
}


void draw() {
  background(200, 200, 100); // we can specify a bg color in RGB

  fill(0, 0, 255);
  rectMode(CORNER);  //this is the default state for rects
  rect(100, 100, 50, 50); // simple rectangle

  ellipseMode(CENTER); //this is the default state for ellipses
  fill(255, 0, 0);
  ellipse(100, 100, 50, 50); //circles are drawn from the center


  
  //rectMode Center draws the rectangle from its center, note how the rect and circle are now aligned
  rectMode(CENTER);
  noFill();
  rect(200,100,50,50);
  
  fill(0, 255, 0);
  ellipse(200, 100, 50, 50);
}

