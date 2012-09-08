void setup(){
  size(600,600);
}

void draw(){
  if(keyPressed){
    fill(255,0,0);
  }
  else if(mousePressed){
    fill(0,255,0);
  }
  else{
    fill(255);
  }
  
  rect(0,0,100,100);
  
}
