// for a detailed commented code look at distanceReactingSpots example

// bi-dimensional array of Spots, with space for 20 x 20 elements 
Spot [] [] mySpot = new Spot[20][20];


void setup() {
  size(600, 600);
  smooth();

  // assign a "spot" to each one of the open spaces
  // and give each one some numbers for the Constructor to give "birth" an object
  for (int i=0; i<mySpot.length; i++) {
    for (int j=0; j<mySpot.length; j++) {
      mySpot [i] [j]= new Spot(30 * i, 30 * j, 20);
    }
  }
}


void draw() {
  background(0);

  // for each one of the objects, update and display (check and draw)
  for (int i=0; i<mySpot.length; i++) {
    for (int j=0; j<mySpot.length; j++) {
      mySpot[i] [j].update(mouseX, mouseY); // we pass the mouse position to the update() of the object
      mySpot[i] [j].display(); // we call the display() method of the object, which basically draws
    }
  }
}

