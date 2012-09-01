void setup(){
  size(500,500);
  smooth();

}

void draw(){
  drawColorRect(100,100,50,50,255,0,0);
  drawColorRect(200,100,50,50,0,255,0);
  drawColorRect(300,100,50,50,0,0,255);
  
}

//there's no limit for the parameters we pass into a function, in this case we are passing position, dimensions and color
void drawColorRect(float xPos, float yPos, float w, float h, int r, int g, int b){
  fill(r,g,b);
  rect(xPos, yPos, w, h);

}
