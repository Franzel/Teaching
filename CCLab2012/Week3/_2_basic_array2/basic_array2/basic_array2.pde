int [] myNumbers; // we DECLARE an array of ints
String [] myWords = { "this", "is", "amazing" }; // we DECLARE and ASSIGN an array of ints

/*

// shortcut to declare and create
int [] myOtherNumbers = new int [5]; // another way for doing the same

*/

void setup() {
  size(500, 500);
  myNumbers = new int[5]; // we CREATE an array of five elements

  // we ASSIGN values to the elements
  myNumbers[0] = 2;
  myNumbers[1] = 4;
  myNumbers[2] = 6;
  myNumbers[3] = 8;
  myNumbers[4] = 10;
  //  myNumbers[5] = 12;  // this would give us an error cause it is out of bounds!!!
}

void draw() {
  //the array of strings
  for (int i = 0; i<myWords.length ; i++) {
    println(myWords[i]);
  }

  // the array of ints
  for (int i = 0; i<myNumbers.length ; i++) {
    println(myNumbers[i]);
    rect(10 * myNumbers[i], 100, 10, 10); // we use those numbers to position some squares
  }
}

