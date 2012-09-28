/*
* Simple Image Load
* by Francisco Zamorano
* CCLab 2012
*/

PImage img;  // Declare variable "img" of type PImage

void setup() {
  size(640, 360);
  // The image file must be in the data folder of the current sketch 
  // to load successfully

  img = loadImage("fry.jpg");  // Load the image into the program
}

void draw() {

  tint(255, 255, 255);
  image(img, 0, 0); // Displays the image at its actual size at point (0,0)
  
  tint(255, 0, 0, 100); // we use tint to control each color channel (RGBA)
  // we can access the width of the image using img.width
  // we can also alter the original size
  image(img, img.width -100, height/2, img.width/2, img.height/2); 
}

