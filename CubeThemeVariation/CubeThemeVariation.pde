
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
 
  // Angle Lines
  angularLines();
  
  // Rectangles
  wideLoad();
  
  // Middle Shape
  turret();
  
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

//---------
// TURRET
//---------

void turret() {
  pushMatrix();
  pushStyle();
  
  fill(0, 255);
  stroke(255, 255);

  int offset = 5;
  int num = 15;

  for(int i = 0; i < num; i++) {
    translate(-offset, offset);
    beginShape();
      vertex(-5,            height * 0.50);  // Bottom Left
      vertex(width + 5,     height * 0.50);  // Bottom Right
      vertex(width + 5,     height * 0.45);  // Top Right
      
      vertex(width * 0.80,   height * 0.45); // Right Turret Bottom Right
      vertex(width * 0.80,   height * 0.35); // Right Turret Top Right
      vertex(width * 0.75,  height * 0.35);  // Right Turret Top Left
      vertex(width * 0.75,  height * 0.45);  // Right Turret Bottom Left
      
      vertex(width * 0.55,  height * 0.45);  // Middle Turret Bottom Right
      vertex(width * 0.55,  height * 0.35);  // Middle Turret Top Right
      vertex(width * 0.50,  height * 0.35);  // Middle Turret Top Left
      vertex(width * 0.50,  height * 0.45);  // Middle Turret Bottom Left
      
      vertex(width * 0.35,  height * 0.45);  // Left Turret Bottom Right
      vertex(width * 0.35,  height * 0.35);  // Left Turret Top Right
      vertex(width * 0.30,  height * 0.35);  // Left Turret Top Left
      vertex(width * 0.30,  height * 0.45);  // Left Turret Bottom Left
      
      vertex(width * 0.05,  height * 0.45);  // Left Turret Bottom Right
      vertex(width * 0.05,  height * 0.25);  // Left Turret Top Right
      vertex(width * -0.05,  height * 0.25);  // Left Turret Top Left
      vertex(width * -0.05,  height * 0.45);  // Left Turret Bottom Left    
    endShape();
  }  
  
  popMatrix();
  popStyle();
}

