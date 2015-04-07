/*  Tim Scroggs
 03/27/2014
 CSCI 182_002
 Homework 5 - Game
 Description:
 Directions:
 */

PFont f;
int counter = 0;
float xDrive;

void setup() {
  size(500, 750);
  smooth();
  f = loadFont("HelveticaNeue-Bold-48.vlw");
  xDrive = -50;
}  


void draw() {
  background(75, 88, 75);
  if (counter < 710) {//day sky
    background(211, 239, 255);
    fill(20);
    noStroke();
    rect(0, height/4*3, width, 200);
  } 
  else if (counter >= 710 && counter < 5290) {//game happens in this time slot
  background(15, 17, 59);//nightSkyColor
    fill(90);
    noStroke();
    rect(0, height/4*3, width, 200);//ground
  }
  else if (counter >= 5290 && counter < 6000) {//arrives home
  background(15, 17, 59);//nightSkyColor
    fill(90);
    noStroke();
    rect(0, height/4*3, width, 200);//ground  
  }
  else if (counter == 6000) {//night sky
  gameOverScreen();
  }
  
  if (counter < 710) {//night sky
    int night = 100;
    int dayLight = 129, 188, 129, night;
    background(dayLight);//nightSkyColor
    fill(90);
    noStroke();
    //rect(0, 0, width+190, height);
    //rect(0, 0, width, height);//ground
  } 

  fill(80);
  stroke(60);
  strokeWeight(5);
  rectMode(CENTER);
  rect(width/2, height/2, 252, height+10);
  noStroke();
  //strokeWeight(1);
  //road lines
  int i;
  for (i=-1; i< height; i+=25) {
    fill(255);
    rect(width/2-42, i, 5, 15);
  }

  for (i=-1; i< height; i+=25) {
    fill(255);
    rect(width/2+42, i, 5, 15);
  }




  xDrive += 1.65;

  counter++; //timer keeping time for all the animation
  if (counter == 6000) {
    gameOverScreen();
  }
}


//------------------------END OF DRAW FUNCTION-----------------------//

void gameOverScreen() {
  background(0, 25);
  fill(255);
  textFont(f, 22);
  text("Sorry, but you didn't", width/2 - 150, height/2 - 125);
  text("make it home this time.", width/2 - 150, height/2 - 95);
  textFont(f, 48);
  text("GAME OVER", width/2 - 150, height/2);
  //if (score > 0)
  //text("GAME OVER", width/2 - 150, height/2);
  //else
  //text("FAILURE", width/2 - 150, height/2);
  //text("Score: " + score, width/2 - 150, height/2 + 60);
  fill(125);
  textFont(f, 26);
  text("Press any key to restart.", width/2 - 150, height/2 + 40);
  noLoop();
}

// restart game
void keyPressed() {
  //if (sqSize <= 2) { // game is already over
  loop();
}

void nightTime () { //draws the night scene with home and its shadows
  noStroke();
  fill(222, 222, 222);//moon color
  ellipse(100, 100, 45, 45);//moon
  fill(40);//house
  rect(300, height/4*3-80, 65, 80);
  fill(0);//shadow
  quad(300, height/4*3, 365, height/4*3, 430, height/4*3+40, 365, height/4*3+40);
  fill(40);//roof
  triangle(285, height/4*3-80, 380, height/4*3-80, 332, height/4*3-130);
  strokeCap(SQUARE);//roof line
  stroke(0);
  strokeWeight(1);
  line(300, height/4*3-80, 365, height/4*3-80);
  noStroke();
  fill(0);//shadow of roof
  triangle(350, height/4*3+40, 445, height/4*3+40, 488, height/4*3+105);
}


void dayTime () { //draws the daytime scene with the corporate building
  noStroke();
  fill(234, 168, 0);
  ellipse(100, 100, 45, 45);

  //building one
  fill(80);
  rect(250, height/4*3-305, 113, 305);

  //shadow  
  fill(0);
  quad(250, height/4*3, 363, height/4*3, 500, height/4*3+150, 385, height/4*3+150);

  for (int i = 260; i < 340; i+=24) { //using a loop to draw all the windows
    for (int j= 85; j < 340; j+=30) {
      windowOff(i, j, 10, 1);
    }
  }
}

void windowOn (float x, float y, float xSize, float yGap) {//window with the lights on
  fill(255, 241, 107);
  rect(x, y, xSize, xSize);
  rect(x+xSize+yGap, y, xSize, xSize);
  rect(x, y+xSize+yGap, xSize, xSize);
  rect(x+xSize+yGap, y+xSize+yGap, xSize, xSize);
}

void windowOff (float x, float y, float xSize, float yGap) { //window with the lights out
  fill(0);
  rect(x, y, xSize, xSize);
  rect(x+xSize+yGap, y, xSize, xSize);
  rect(x, y+xSize+yGap, xSize, xSize);
  rect(x+xSize+yGap, y+xSize+yGap, xSize, xSize);
}

void carShadow () { //This function creates my cool cadillac with white wall tires!!
  fill(255, 166, 222);
  rect(xDrive-27, 353, 109, 13);
  fill(255, 125, 180);
  arc(xDrive, 365, 22, 20, -PI, 0);
  arc(xDrive+55, 364, 22, 20, -PI, 0);
  //tires
  fill(0);
  ellipse(xDrive, 365, 19, 19);
  ellipse(xDrive + 55, 365, 19, 19);
  fill(100);
  ellipse(xDrive, 365, 6, 6);
  ellipse(xDrive + 55, 365, 6, 6);
  noFill();
  stroke(255);
  strokeWeight(1.5);
  ellipse(xDrive, 365, 15, 15);
  ellipse(xDrive + 55, 365, 15, 15);
  fill(255);
  quad(xDrive+5, 352, xDrive+12, 340, xDrive+43, 340, xDrive+50, 352);
  fill(0);
  quad(xDrive+7, 351, xDrive+13, 341, xDrive+42, 341, xDrive+48, 351);
  stroke(255);
  strokeWeight(2);
  line(xDrive+21.5, 351, xDrive+21.5, 340);
  noStroke();

  //shadow
  noStroke();
  fill(0);
  quad(xDrive-20, 375, xDrive+92, 375, xDrive+116, 390, xDrive+8, 390);
  quad(xDrive+20, 385, xDrive+90, 385, xDrive+90, 400, xDrive+50, 400);
}


