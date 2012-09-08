/*
Using booleans + if statements to detect if we click inside an area
*/

boolean button = false;
float xPos, yPos;
float rectSize = 50;

void setup() {
  size(600, 600); 
  xPos = width/2;
  yPos = height/2;
}


void draw() {
  background(0);
  // we can nest if statement if we want. The result is the same. Just a matter of style
  if (mouseX > xPos && mouseX < xPos + rectSize && mousePressed==true) {
    if (mouseY > yPos && mouseY < yPos + rectSize) {
      button = true; //if alll the above conditions are met, turn the boolean to true
    }
  }
  else {  
    button = false; // if none of the conditions are met, turn the boolean to false
  }

  //now we have a boolean switching between true or false
  //we can use that to control something else
  
  if (button) { //a short way to write if(button==true)
    fill(0, 255, 0); //if true, use green
  }
  else {
    fill(255, 0, 0); //if false, use red
  }

  rect(xPos, yPos, rectSize, rectSize);

  println(button); //check boolean state on the console
}

