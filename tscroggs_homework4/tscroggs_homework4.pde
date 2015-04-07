/*Name: Tim Scroggs
 Date: 03/13/14
 Class: CSCI 182 002
 Assignment: Homework 4: Functions
 Description: This program contains a total of three functions that work together to 
 form a scene that is split between a randomly chosen color scheme and it's gray scale
 interpretation.
 */



//FUNCTION 1 computes the visual brightness of a given
//rgb color, specified by three parameters for the red, blue, and
//green components.  This function computes the average of given rgb
//returns a float value that represents the brightness. 

float howBright (float r, float g, float b) {
  return ((r + g + b)/3);
}



//FUNCTION 2 draws an automobile approximately 100x100 pixels in size 
//centered at the x,y coordinates given by the first two float parameters 
//the next three float parameters specify the rgb components of the primary paint color 
//and the last three float parameters specify the rgb components of the trim color

void drawCar (float x, float y, float r1, float g1, float b1, 
float r2, float g2, float b2) {
  noStroke();
  fill(r1, g1, b1);//primary color on body
  //car body
  beginShape();
  vertex(x-60, y-10);
  vertex(x-50, y-20);
  vertex(x+60, y-20);
  vertex(x+60, y+20); 
  vertex(x-60, y+20);
  endShape();//car body

  //door handle
  fill(0);
  rect(x+8, y-15, 8, 4);

  //bumpers
  fill(r2, g2, b2);
  rect(x-70, y+10, 10, 10);
  rect(x+60, y+10, 10, 10);

  //trim over wheels
  fill(r2, g2, b2);//trim color on trim over wheels
  arc(x-30, y+20, 42, 42, -PI, 0);//trim over back wheel
  arc(x+30, y+20, 42, 42, -PI, 0);//trim over back wheel

  //tires
  fill(0);
  ellipse(x-30, y+20, 36, 36);
  ellipse(x+30, y+20, 36, 36);
  fill(100);
  ellipse(x-30, y+20, 12, 12);
  ellipse(x+30, y+20, 12, 12);
  noFill();
  stroke(255);
  strokeWeight(1.5);
  ellipse(x-30, y+20, 25, 25);
  ellipse(x+30, y+20, 25, 25);

  //roof
  noStroke();  
  fill(r2, g2, b2);
  quad(x-30, y-20, x-10, y-50, x+30, y-50, x+50, y-20);
  fill(0);
  quad(x-23, y-20, x-7, y-45, x+27, y-45, x+43, y-20);//windows
  stroke(r2, g2, b2);
  strokeWeight(5);
  strokeCap(SQUARE);
  line(x+20, y-47, x+20, y-20);
  noStroke();
}



//FUNCTION 3 draws two cars in the display window on a stationary roadway: 
//one car is in the middle of the left half of the screen in a randomly chosen color scheme 
//and the other car is in the middle of the right half of the screen in a gray scale
//version of the first car. There are no parameters.


void fullPic() {
  float r1 = random(255);
  float g1 = random(255);
  float b1 = random(255);
  float r2 = random(255);
  float g2 = random(255);
  float b2 = random (255);
  float gray1 = howBright(r1,g1,b1);
  float gray2 = howBright(r2,g2,b2);
  
  background(255);
  
  //the roadway
  fill(80);
  stroke(60);
  strokeWeight(5);
  rect(-1, height/2+25, width+2, 50);
  noStroke();
  //strokeWeight(1);
  //road lines
  int i;
  for (i=-1; i< width/2; i+=25) {
    fill(205, 155, 0);
    rect(i, height/2+45, 15, 6);
  }

  for (i=width/2; i<width+5; i+=25) {
    fill(howBright(205, 155, 0), howBright(205, 155, 0), howBright(205, 155, 0));
    rect(i, height/2+45, 15, 6);
  }


  drawCar(width/4, height/2, r1, g1, b1, r2, g2, b2);
  drawCar(width/4 + 2*width/4, height/2, gray1, gray1, gray1, gray2,gray2,gray2);
}



void setup() {
  size(400, 400);
  fullPic();
}

