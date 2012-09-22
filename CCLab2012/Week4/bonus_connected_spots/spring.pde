// our function to draw the lines
// functions can also be put in separate tabs, but it is the same as writing this in the main sketch(just a matter of style)

float minDist = 50; //we determine a minimum distance, so we don't draw from all to all

void connector (float posAx, float posAy, float posBx, float posBy) { // here we get the position from the sampled spots

  float distance = dist( posAx,  posAy,  posBx,  posBy); // calculate the distance between them

  if (distance < minDist) { // if bigger do not draw a line
    strokeWeight(0.1);
    stroke(255);
    line(posAx,  posAy,  posBx,  posBy);
  }
}

