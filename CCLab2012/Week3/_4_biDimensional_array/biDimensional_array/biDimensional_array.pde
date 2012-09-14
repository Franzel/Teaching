int rows = 20;
int cols = 20;
float myNumber [] [] = new float [cols] [rows]; //same syntax but with two brackets

void setup() {
  size (400, 400);
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      myNumber [i] [j] = random(255);
    }
  }
}

void draw() {
  background(200,200,0);
  noStroke();
  
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      fill(myNumber[i][j]);
      rect(20*i, 20*j, 16, 16);
    }
  }
}


