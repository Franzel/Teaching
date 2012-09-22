// Creating objects on Click
// Francisco Zamorano
// Creativity and Computation Lab
// Fall 2012

Ball myBall; // we declare the class

void setup() {
  size(600, 600);
  smooth();

  // we create and assign an object
  // we could create it on the setup, in draw or in other function. 
  // in this case we use the setup so it creates one when the program runs
  myBall = new Ball(100, 100, color(random(255), random(255), random(255)));
}

void draw() {
  //we call the display() method of the object to draw
  myBall.display();
}

void mouseClicked() {
  // we create a new object every time we CLICK
  myBall = new Ball(mouseX, mouseY, color(random(255), random(255), random(255)));
}

void mouseDragged() {
  // we create a new object every time we DRAG, different from the above
  myBall = new Ball(mouseX, mouseY, color(255,0,0)); //make color red
}

