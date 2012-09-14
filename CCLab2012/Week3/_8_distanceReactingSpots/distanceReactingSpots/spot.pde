class Spot {
  
  // we define the variables
  // these variables are accesible 
  float x;
  float y;
  float mx;
  float my;
  float sz;
  float mouseDist;
  float mouseDistMapped;
  
  // this is the Constructor
  // The Constructor is used for initializing data for the object
  // It's like the initials parameters needed to create the object
  // Note the syntax. There is no "void" before the name
  Spot(float xPos, float yPos, float spotSize){
    x = xPos;      // assign xPos (a number coming from outside the class) to x (a local variable)
    y = yPos;      // same case with y and yPos
    sz = spotSize; // same for sz and spotSize
  }
  
  
  // The functions inside a class are called Methods
  // this "update" method is to check things every frame
  // in this case we are checking the mouse position 
  // the name "update" is just a name
  void update(float mousePosX, float mousePosY){
    mx = mousePosX;
    my = mousePosY;
    mouseDist = dist(x, y, mx, my);
    mouseDist = constrain(mouseDist, 0, 200);
    mouseDistMapped = map(mouseDist, 0, 200, 1.5, 0.3);
  }
  
  
  // with this method we draw
  // To be less confusing, we call this method "display", but could be "draw" or any other name
  void display(){
    // draw an ellipse
    // note that we are controlling the size with mouseDistanceMapped (that gives us a number between 0 and 1
    // what we do is multiply the size by a number between 0 and 1, so it's like a percentage
    ellipse(x, y, sz * mouseDistMapped, sz * mouseDistMapped); 
  }
   
  
  
  
}
