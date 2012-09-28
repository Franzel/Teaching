class Sound1 {
  //We create an AudioSnippet object called snip, thanks to the minim library
  AudioSnippet snip;
  
  //Constructor
  Sound1() {
    snip = minim.loadSnippet("glass.aiff");
  }

  //Method 1: play Sound
  void playSound() {
    snip.rewind(); // we make sure we start from the beginning
    snip.play(); // play the sound
  }
}

