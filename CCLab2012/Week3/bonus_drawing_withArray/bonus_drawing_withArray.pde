int num = 50;
float[] xPos = new float[num]; //we declare and create the array
float[] yPos = new float[num]; //we declare and create the array

void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  background(255);
  
  for (int i=num-1; i>0; i--) {
    xPos[0] = mouseX; //the last position will always be the cursor position
    yPos[0] = mouseY; //the last position will always be the cursor position

    line(xPos[i], yPos[i], xPos[i-1], yPos[i-1]); //draw a line from the current to the prev position
    ellipse(xPos[i], yPos[i], 2,2); // and a tiny ellipse

    xPos[i] = xPos[i-1] ; //shift all the values to the right in the array
    yPos[i] = yPos[i-1] ; //shift all the values to the right in the array
    
    println(i+" " + xPos[i] +"  "+yPos[i]);
  }
}

