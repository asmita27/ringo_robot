
/* 

Ringo Robot
Ringo_Base_Sketch_Rev06
Version 6.2 03/2018

This is a basic sketch that can be used as a starting point
for various functionality of the Ringo robot.

Significant portions of this code written by
Dustin Soodak for Plum Geek LLC. Some portions
contributed by Kevin King.
Portions from other open source projects where noted.
This code is licensed under:
Creative Commons Attribution-ShareAlike 2.0 Generic (CC BY-SA 2.0)
https://creativecommons.org/licenses/by-sa/2.0/
Visit http://www.plumgeek.com for Ringo information.
Visit http://www.arduino.cc to learn about the Arduino.

*/
#include "RingoHardware.h"

//int i;    //declaire any global variables here

void setup(){
  HardwareBegin();        //initialize Ringo's brain to work with his circuitry
  PlayStartChirp();       //Play startup chirp and blink eyes
  SwitchMotorsToSerial(); //Call "SwitchMotorsToSerial()" before using Serial.print functions as motors & serial share a line
  RestartTimer();
  NavigationBegin();
}

    
void loop(){ 
  
  // put your own code here

 /*
 MoveWithOptions(0,40,150,20,0,0,10);
 int deg = GetDegrees();
      if(deg<90 && deg>0){
        Motors(150,155);
        }
        MoveWithOptions(0,40,150,20,0,0,10);
        deg = GetDegrees();
      if(deg>90){
        Motors(155,150);
      }
      MoveWithOptions(0,40,150,20,0,0,10);
      deg = GetDegrees();
     */ 
     //1) Motors (150,160)
      Motors(150,152);
          
          


} // end of loop() function
