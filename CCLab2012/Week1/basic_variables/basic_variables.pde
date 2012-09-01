///DECLARING VARIABLES

/// basic way to define a variable
int x; // we are asking the computer to create (allocate) a space in memory for an integer called "x"
float xPos;

int cat, dog, squirrel; //this is a shortcut


// In Processing we can assign values when declaring the variables
int y = 100;
float yPos = 200;


void setup() {  
  size(500, 500); //as a convention we always determine the window size first

  x = 100; //we assign a value to the variable x declared above
  xPos = 200;// we assign a value to the variable xPos declared above

  int myVar;  //if we declare a variable here it will only be accesible from inside the setup

  cat = dog = squirrel = 100;  //if you're feeling lazy this is another shortcut

  
  int z;
  int z=100; //this is a re-declaration of the variable thus will give an error!
  
}

void draw() {
  rect(xPos, yPos, x, y); //use the variables to shape a rectangle
}

