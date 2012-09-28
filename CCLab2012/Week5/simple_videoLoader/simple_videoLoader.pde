/*
 * Simple Video Load and basic controls
 * by Francisco Zamorano
 * CCLab 2012
 */
 
import processing.video.*; //import library

Movie myMovie; // declare a Movie object
boolean bPlaying; 

void setup() {
  size(640, 480);

  myMovie = new Movie(this, "theo.mov"); //create the object
  myMovie.loop(); // we tell it to loop
  bPlaying = true; // is playing
}

void draw() {
  //  background(255);
  tint(255, 255); //give it a tint and a transparency
  image(myMovie, 0, 0); //who, xpos, ypos
}

// Called every time a new frame is available to read, this is important!
void movieEvent(Movie m) {
  m.read();
}

// we'll use space bar to pause-play
void keyPressed() {
  if (key == ' ' && bPlaying) {
    myMovie.pause();
    bPlaying = false;
  }
  else if (key == ' ' && !bPlaying) {
    myMovie.play();
    bPlaying = true;
  }
}

// we'll use this to control speed
void mouseDragged() {
  float speed = map(mouseX, 0, myMovie.width, -10, 10); // map mouseX to playback speed
  myMovie.speed(speed); //we can control the playback speed, 1.0 = normal speed, -1.0 = reverse normal speed
  myMovie.play();
  
  //warning: when we reach the beggining of the movie in reverse, it will give us an error. This is because loop() works only forward
  //to solve this we'd need to make some trick that when the movie reaches frame 1 when going backwards, jump to the last frame and keep playing.
}

