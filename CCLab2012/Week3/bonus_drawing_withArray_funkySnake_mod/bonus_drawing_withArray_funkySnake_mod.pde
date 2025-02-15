int num = 100;
float[] xPos = new float[num]; //we declare and create the array
float[] yPos = new float[num]; //we declare and create the array

void setup() {
  size(600, 600);
  smooth();
  
    for (int i=num-1; i>0; i--) {
    xPos[i] = mouseX;
    yPos[i] = mouseY; //shift all the values to the right in the array
  }
  
}

void draw() {
  background(255);
  translate(width/2, height/2);

  for (int i=num-1; i>0; i--) {
    xPos[i] = xPos[i-1] ; //shift all the values to the right in the array
    yPos[i] = yPos[i-1] ; //shift all the values to the right in the array
  }
  
  float modulator = cos(radians(millis()*0.08));

  xPos[0] = sin(radians(millis()*0.3)) * 100 * modulator; //the last position will always be the cursor position
  yPos[0] = cos(radians(millis()*0.5)) * 100 * modulator; //the last position will always be the cursor position

  for (int i=num-1; i>0; i--) {
    stroke(100,50,50,255 - 5*i);
    fill(255,100+ 100*modulator,0,255 - 5*i);
    ellipse(xPos[i] , yPos[i], i/2, i/2); // and an ellipse that will increase in size
  }
}

