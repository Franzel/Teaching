// Creating objects on Click-ArrayList
// Francisco Zamorano
// Creativity and Computation Lab
// Fall 2012

ArrayList myBall; // declare - create

color myColor; // we define a color
float ballSize = 30;
int total = 0;

void setup() {
  size(600, 600);
  smooth();
  myBall = new ArrayList();
}


void draw() {
  background(255);

  for (int i=0; i<myBall.size(); i++) {
    Ball b = (Ball) myBall.get(i); // we have to "cast" the element of the array with a Ball object
    b.update();           //we call the update() method of the object
    b.display();          //we call the display() method of the object
    println(i);
  }
}

void mouseDragged() {
  //add a new Ball at mouse location with some random parameters
  myBall.add(new Ball(mouseX, mouseY, color(random(255), random(255), random(255)), random(10, ballSize)));

  //if the arrayList has more than 50 elements, we delete the first element
  if (myBall.size()>50) {
    myBall.remove(0);
  }
}

