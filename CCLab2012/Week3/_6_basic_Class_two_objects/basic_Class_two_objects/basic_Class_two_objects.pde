Spot sp1 = new Spot(); // we declare and create an object from the class
Spot sp2 = new Spot(); // we declare and create a SECOND object from the SAME class


void setup(){
  size(400,400);
  smooth();
  sp1.init(); // we tell the object 1 to run the code inside init()
  sp2.init(); // we tell the object 2 to run the code inside init()
}

void draw(){
  background(0);
  sp1.xPos ++; // add to the xPos of this object
  sp1.yPos ++; // add to the yPos of this object
  
  sp2.ballColor = 100; // we can also modify only some of the variables of an object
  sp2.ballSize = 200;   // change the size
  
  sp2.display(); // we tell the object 2 to run the code inside display()
  sp1.display(); // we tell the object 1 to run the code inside display()

}
