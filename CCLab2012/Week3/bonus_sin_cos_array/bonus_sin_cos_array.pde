float[] xPos, yPos; // we declare two float arrays

void setup() {
  size(500, 500);
  smooth();
  
  xPos = new float[36]; //we create 36 elements(positions)
  yPos = new float[36]; //we create 36 elements(positions)

  float rad = 100; // we create a radius

  for (int i=0;i<xPos.length;i++) {
    xPos[i] = cos (radians(10*i)) * rad; //each loop will increase the angle by 10
    yPos[i] = sin (radians(10*i)) * rad; //each loop will increase the angle by 10

  }
}

void draw() {
  translate (width/2, height/2); //we move to the center of the screen

  //we now access the array to draw an ellipse on the xPos,yPos of each element
  for (int i=0;i<xPos.length;i++) {
    ellipse(xPos[i], yPos[i], 10, 10); 
  }
}

