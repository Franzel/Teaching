// Creating objects on Click-array
// Francisco Zamorano
// Creativity and Computation Lab
// Fall 2012

Ball [] myBall = new Ball[50]; // declare - create

color myColor; // we define a color
float ballSize = 30;
int total = 0;

void setup() {
  size(600, 600);
  smooth();

  //uncomment this to set up all the objects at once 

  //  for (int i=0; i<myBall.length; i++) {
  //    //we create and assign an object
  //    ballSize = random(20, 60);
  //    myBall[i] = new Ball(random(width), 300, color(random(255), random(255), random(255)), ballSize);
  //  }
}


void draw() {
  background(255);

  // to set up all at once on setup() we'd need to change "total" for "myBall.length"
  for (int i=0; i<total; i++) {
    myBall[i].update(); 
    myBall[i].display();
  }
  //we call the display() method of the object
}

//change the function to mouseDragged to get a nicer effect
void mouseClicked() {
  ballSize = random(20, 60) ;
  myBall[total] = new Ball(mouseX, mouseY, color(random(255), random(255), random(255)), ballSize);
  total = (total + 1) % myBall.length; // we do this to keep the index number within the length of the array
  println(total);
}

