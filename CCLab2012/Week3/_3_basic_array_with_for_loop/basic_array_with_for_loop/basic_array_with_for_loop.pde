int[] myNumbers; // declare

void setup() {
  myNumbers = new int[10]; //create

  for (int i = 0; i<myNumbers.length;i++) { 
    myNumbers[i] = 10*i; //assign
  }
}

void draw() {
  for (int i = 0; i<myNumbers.length;i++) {
    println(myNumbers[i]); //access
  }
}

