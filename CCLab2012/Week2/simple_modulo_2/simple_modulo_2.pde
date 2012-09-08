int moveX;

void setup(){
 size(500,500);
 smooth();
 moveX = 100;
}

void draw(){
  background (0);
  
  //every time the counter cycles through 30 frames....
  if(frameCount % 30 == 0){  //change the number of frames to see change in speed
   moveX *= -1; //make my value negative or positive
  }
  ellipse(width/2 + moveX, height/2, 60,60); // we add/substract position  using our value

  println(frameCount + " " + moveX);
}
