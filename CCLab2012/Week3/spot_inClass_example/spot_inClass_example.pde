int nSpots = 50;
Spot [] mySpot = new Spot [50];

void setup() {
  size(400, 400);
  smooth();

  for (int i=0; i<mySpot.length ; i++) {
    mySpot[i] = new Spot(random(width), random(height),100,random(255));
  }
}

void draw() {
  background(0);
  for (int i=0; i<mySpot.length ; i++) {
    mySpot[i].update(mouseX, mouseY);
    mySpot[i].display();
    
  }
}

