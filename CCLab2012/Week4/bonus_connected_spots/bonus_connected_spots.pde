// Connected Spots
// Francisco Zamorano
// Creativity and Computation Lab
// Fall 2012


Spot []mySpot = new Spot[200];


void setup() {
  size(600, 600);
  smooth();

  float originX = width/2; //this is just to draw from the center of the screen, we coudl use translate too
  float originY = height/2;
  float angle = 0; //we start with an angle of 0

    for (int i=0; i<mySpot.length; i++) {
    float radius = random(200); // each time we create a random angle to use in the sin-cos function
    float xPos = originX + cos(angle) * radius; //you know how this works
    float yPos = originY + sin(angle) * radius; //you know how this works
    angle += radians(3.6); //each loop we increment the radius by 3.6 degrees

    mySpot [i] = new Spot(xPos, yPos, 20); // to each one of the objects, we give it the position defined by the sin-cos
  }
}


void draw() {
  background(0);

  // draw the lines
  // we use a nested for loop to get 2 samples(each turn) of all the spots available 
  // see th function "spring" on the other tab
  for (int i = 0; i < mySpot.length; i++) {
    for (int j = 0; j < mySpot.length; j++) {
      connector(mySpot[i].x, mySpot[i].y, mySpot[j].x, mySpot[j].y); //we pass the position of the sampled spots to the function (see other tab)
    }
  }

  // for each one of the objects, update and display (check and draw)
  for (int i=0; i<mySpot.length; i++) {
    mySpot[i].update(mouseX, mouseY); // we pass the mouse position to the update() of the object
    mySpot[i].display(); // we call the display() method of the object, which basically draws
  }
}

