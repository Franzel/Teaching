Eye eyes1, eyes2; //declare two Eye objects
Face face1, face2;
Mouth mouth1, mouth2;

int selectedKey;

void setup() {
  size(800, 400);
  smooth();
  frameRate(30);

  //HEAD 1
  float faceWidth = 150;
  face1 = new Face(200, 200, faceWidth, 200, color(220, 200, 140));
  eyes1  = new Eye(200, 180, 60, color (0, 255, 255), 90); //x,y,s,c,f
  mouth1 = new Mouth(200, 250, 30, 5);

  //CHARACTER 2
  face2 = new Face(400,200,150,200,color(240,230,220));
  eyes2  = new Eye(400,200,60,color (0, 0, 255), 100); //x,y,s,c,f
  mouth2 = new Mouth(400, 250, 30, 10);
}


void draw() {
  background(100);

//Character 1
  face1.display();
  eyes1.display();
  mouth1.update(selectedKey);
  mouth1.draw();
  
//Character 2
  face2.display();
  eyes2.display();
  mouth2.update(selectedKey);
  mouth2.draw();
}

//Let's make some keyboard interaction
void keyPressed() {
  if (key=='1') {
    selectedKey = 1;
  }
  else if (key=='2') {
    selectedKey = 2;
  }
  else{
    selectedKey = 3;
  }
}

