Spot sp = new Spot();// we declare and create an object called "sp" from the class

void setup(){
  size(400,400);
  smooth();
  sp.init(); // we tell the object to run the code inside init()
}

void draw(){
  background(0);
  sp.xPos ++; //we can access an internal variable using the dot 
  sp.yPos ++; //we use the dot because this variable is accesible only from inside the class
//  sp.ballSize -= 0.1; // use the ballSize method to shrink the spot

  sp.display(); // we tell the object to run the code inside display()
}
