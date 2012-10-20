
/*
 * Arduino Sender
 * From Arduino we send values from three sensors
 * We use a comma separated string, so we can later split that into parts in processing
 *
 * CCLab Fall 2012
 * by Francisco Zamorano
 */
 
void setup(){
  Serial.begin(9600);
}

void loop(){
  Serial.print(analogRead(A0));
  Serial.print(",");
  Serial.print(analogRead(A1));
  Serial.print(",");
  Serial.print(analogRead(A2));
  Serial.print(",");
  Serial.print("\n");  //this is sendin a line break. Same as saying println
  
  delay(10);

}




