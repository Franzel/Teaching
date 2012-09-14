Spot sp1 = new Spot(); // we declare and create an object from the class
Spot sp2 = new Spot(); // we declare and create a SECOND object from the SAME class

// we create an array called mySpot with space for 20 Spot objects
Spot [] mySpot = new Spot[20];

void setup() {
  size(400, 400);
  smooth();
  sp1.init(); // we tell the object 1 to run the code inside init()
  sp2.init(); // we tell the object 2 to run the code inside init()

  //create an array of spots
  for (int i=0; i<mySpot.length; i++) {
    mySpot [i] = new Spot(); // we assign the elements of the array, and we give it some properties
    mySpot[i].init(); // we initialize the object's values (or "fields")
  }
  
}

void draw() {
  background(0);
  sp1.xPos ++; // add to the xos of this object
  sp1.yPos ++; // add to the yPos of this object

  sp2.ballColor = 100; // we can also modify only some of the variables of an object
  sp2.ballSize = 200;   // change the size

  sp2.display(); // we tell the object 2 to run the code inside display()
  sp1.display(); // we tell the object 1 to run the code inside display()
  
  for (int i=0; i<mySpot.length; i++) {
      // play with the fields or values on each turn
      mySpot[i].xPos = 20 * i;
      mySpot[i].yPos = height/2;
      mySpot[i].ballSize = 5;
      mySpot[i].ballColor = 255;
      
      mySpot[i].display(); // run the code inside display() method in the object
  }
  
}

