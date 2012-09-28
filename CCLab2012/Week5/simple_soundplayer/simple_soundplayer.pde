/*
 * Simple Sound Load and a button
 * by Francisco Zamorano
 * CCLab 2012
 */

import ddf.minim.*; // we need to import the library first

Minim minim; //declare a minim object
Sound1 mySound1; // declare a sound object
float buttonSize;
float buttonPosX, buttonPosY;

void setup() {
  size(400, 400);
  minim = new Minim(this); // create a minim object
  mySound1 = new Sound1(); // create a mySound object
  buttonSize=100;
  buttonPosX = width/2;
  buttonPosY = height/2;
}

void draw() {
  //Color feedback when button is pressed
  if (mousePressed && dist(mouseX, mouseY, buttonPosX, buttonPosY)<buttonSize/2) {
    fill(255, 0, 0);
  }
  else {
    fill(100, 0, 0);
  }

  ellipse(buttonPosX, buttonPosY, buttonSize, buttonSize); //draw button
}

void mouseClicked() {
  //boundary detection and sound trigger
  if (dist(mouseX, mouseY, buttonPosX, buttonPosY)<buttonSize/2) {
    mySound1.playSound();
  }
}

