/*
 * Based on code from Lucky Larry
 * http://luckylarry.co.uk/arduino-projects/using-processing-to-send-values-to-arduino/
 *
 */
 
import processing.serial.*;
Serial myPort;

int lightValue;  // will store the current light value based on mouse position

void setup () {
    size(600,600);
  
    lightValue = 0; // initialize at 0
    
    println(Serial.list()); //print the list of available ports
    myPort = new Serial(this, Serial.list()[0], 9600); //use the first port
}
 
void draw () {
    background(lightValue); // set background to lightValue
    
    lightValue = mouseY;
    lightValue = int(map(lightValue, 0, height, 255, 0)); // map it to 0-255

    // a second value, mouse X
    int lightValue2 = int(map(mouseX, 0, width, 255, 0)); // map it to 0-255

    // We send three consecutive values to the port
    myPort.write(lightValue);
    myPort.write(lightValue2);
    myPort.write(lightValue);
}
