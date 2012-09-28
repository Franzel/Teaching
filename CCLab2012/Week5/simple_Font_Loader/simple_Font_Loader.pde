/*
* Simple Font example
* Francisco Zamorano
* CCLab 2012
*/

PFont myFont; // declare a PFont called myFont
int fontSize = 200;

void setup() {
  size(600, 600);
  smooth();
  myFont = loadFont("Lucida48.vlw"); // load the font from our data folder
}


void draw() {
  background(0);
  fill(100,200,200); // give it a color
  textAlign(CENTER); // center the text
  textFont(myFont, fontSize); // which font, what size
  text("hello", width/2, height/2); //write something, give position
  
  rectMode(CENTER);
  float txtW =  textWidth("hello"); // we can get the width of the text, in pixels
  
  rect(width/2, height/2 + 10 ,txtW,5); //draw a line below
  rect(width/2, height/2 - fontSize, txtW, 5); // draw a line on top
}

