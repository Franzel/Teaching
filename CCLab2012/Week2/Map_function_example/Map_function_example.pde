float myNumber;

void setup(){
  size(600,600);
  myNumber = 35;
}

void draw(){
  myNumber = myNumber + 1; // we increase the number each frame
  
  //we cap the number to a point so it doesn't keep growing forever
  if (mynumber>546){
    mynumber=546;
  }
  
  // we can map that number that goes from 35-546 to a different range using the map function
  // think about it as converting kilometers to meters
  // converting any range to 0-1 is super useful because we turn it into a percentage
  // it's easier to work with percentages
  // we know that 0.5 is the 50% of the range, easier than figuring out the 50% of the range of 35-546
  
  float myMappedNumber = map(mynumber, 35, 546, 0, 1);
 
  println("my original Num = "+ mynumber + "  my mapped Num= " + myMappedNumber); 
}

