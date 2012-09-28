/*
 * Simple Image Load using Arrray
 * by Francisco Zamorano
 * CCLab 2012
 
 * This code will adjust the total images to the width of our window
 */

int numImages = 4;
PImage [] img = new PImage[numImages];  // Declare variable "img" of type PImage
float imageWidth, imageHeight, imageRatio;

void setup() {
  size(825, 600);
  for (int i=0; i<img.length; i++) {
    img[i] = loadImage("fry.jpg");  // Load the image into each spot of the array
  }

  imageWidth = (float) width / numImages; // divide the width of the window by the number of images, we need it to be a float to be precise
  imageRatio = (float) img[0].width / img[0].height; // we take a sample of the Ratio from [0]. We could sample any element since they are all using the same image
  print(imageRatio); // we will use the ratio (width/height) to re-scale the images when we draw
}

void draw() {
  for (int i=0; i<img.length; i++) {
    image(img[i], imageWidth*i, 0, imageWidth, imageWidth / imageRatio);
  }
}

