float[] xPos; // we declare the array
float rad = 30; // we create a radius
float offset;  // we declare an offset we'll use for the angle of the cos function

void setup() {
  size(500, 500);
  smooth();
  frameRate(60); // just to make sure we have a constant framerate
  xPos = new float[50];// we create the array
}

void draw() {
  background(0);
  translate (width/2, 0); //we move to the center of the screen in X
  
  offset = map(mouseX,0,width,0,40); //we map the offset to mouse X
  rad = map(mouseY, 0,height,0,100); //we map the radius to mouse Y

  for (int i=0;i<xPos.length;i++) {
    /*
    We use the time function millis() to increment the angle for the sin function
    We create an offset for that angle, so each element will have a different value
    and correlative to the previous.
    
    Remember that we can increase this angle by different techniques,
    using millis() or frameCount(), or by simply using an increasing number like myIncrement++
    What's important is that we need something to navigate around the angle for the sin-cos function
    */
    float angle = radians(millis() * 0.5 + i * offset); // using the offset, each point will have a different angle all the time
    xPos[i] = cos (angle) * rad; //then we give each element a different value  
    ellipse(xPos[i], (height/xPos.length) * i, 10, 10); // we divide the height by the total number of elements so circles are evenly spaced
  }
}

