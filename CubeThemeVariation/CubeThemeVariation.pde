
/*

Part of the ReCode Project (http://recodeproject.com)
By Processing Vancouver | http://processingvancouver.ca/

Based on "The Cube: Theme and Variation Series" by Edward Zajec
Originally published in "Computer Graphics and Art" vol1 no2, 1976

Copyright (c) 2012 Processing Vancouver
OSI/MIT license (http://recodeproject/license)

*/


//---------
// GLOBALS
//---------



//---------
// SETUP
//---------

void setup() {
  // Screen
  size(600, 600, P3D);
  background(0);
  stroke(255);
  fill(0);
  smooth();
  strokeWeight(2);
  
  
}

//---------
// DRAW
//---------

void draw() {
  // Background
  background(0);
 
  // Style

  
  
  // Angle Lines
  angularLines();
  
  // Rectangles
  wideLoad();
  
}

//---------
// ANGULAR LINES
//---------

void angularLines() {
  stroke(255, 255);
  noFill();
  
  int offset = 10;
  for(int i = 0; i < width * 2; i+= offset) {
    line(0, i, i, 0); 
  }
}

//---------
// WIDE LOAD
//---------

void wideLoad() {
  fill(0, 255);
  stroke(255, 255);

  int offset = 5;
  int num = 15;
  float x = width * 0.05;
  float y = height * 0.66;
  for(int i = 0; i < num; i++) {
    rect( x - (offset*i), y + (offset*i), width, 30 ); 
  }
}



