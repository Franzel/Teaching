//Simple if statements

void setup() {
  size(600, 600);
}

void draw() {


  /*
  //basic if statement
   if(mouseX>width/2){
     fill(255,0,0);
   }
   else{
     fill(0,255,0); 
   }
   */

  if (mouseX > width - width/3) {
    fill(0, 0, 255);
  }
  //if the previous condition is false, then check this one
  else if (mouseX > width/3  && mouseX<width - width/3) { 
    fill(0, 255, 0);
  }
  // if all of the above is false, do this
  else {
    fill(255, 0, 0);
  }



  ellipse(width/2, height/2, 100, 100);
}

