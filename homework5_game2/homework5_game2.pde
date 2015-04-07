/*  Tim Scroggs
 03/27/2014
 CSCI 182_002
 Homework 5 - Game
 Description:
 Directions:
 */

PFont f;
PImage bg;
int counter = 0;
float r = 164; 
float g = 211; 
float b = 165;
float a = 100;
float xDrive;
float x = width/2 + 250;
float y = height + 600;

int trafficx1, trafficx2, trafficx3, trafficx4;
int trafficy1, trafficy2, trafficy3, trafficy4;

int treex1L, treex2L, treex3L;
int treey1L, treey2L, treey3L;

int treex1R, treex2R, treex3R;
int treey1R, treey2R, treey3R;

float paintCar1 = 45; 
float paintCar2 = 240;
float paintCar3 = 190;

float paintCar1b = 45; 
float paintCar2b = 240;
float paintCar3b = 190;

float paintTruck1 = 180; 
float paintTruck2 = 40;
float paintTruck3 = 90;

float paintSemiTruck1 = 80; 
float paintSemiTruck2 = 90;
float paintSemiTruck3 = 10;


boolean forward = false;
boolean turnR = false;
boolean turnL = false;
boolean reverse = false;

float wrecks = 5.01;
boolean lost = false;

void setup() {
  size(500, 750);
  smooth();
  xDrive = -50;

  f = loadFont("HelveticaNeue-Bold-48.vlw");
  bg = loadImage("introBackground.jpg");
  xDrive = -50;
  trafficy1 = 15;
  trafficy2 = -55;
  trafficy3 = height/2;
  trafficy4 = 0;
  trafficx1 = (int) random((width/2-100), (width/2+100));
  trafficx2 = (int) random((width/2-100), (width/2+100));
  trafficx3 = (int) random((width/2-100), (width/2+100));
  trafficx4 = (int) random((width/2-100), (width/2+100));

  //trees on left side of the road
  treey1L = 15;
  treey2L = -55;
  treey3L = height/2;
  treex1L = (int) random(40, (width/2-165));
  treex2L = (int) random(40, (width/2-165));
  treex3L = (int) random(40, (width/2-165));

  //trees on right side of the road
  treey1R = 0;
  treey2R = -55;
  treey3R = 80;
  treex1R = (int) random((width/2+165), width-40);
  treex2R = (int) random((width/2+165), width-40);
  treex3R = (int) random((width/2+165), width-40);
}  


void draw() {
  background(r, g, b, a);

  fill(80);
  stroke(60);
  strokeWeight(5);
  rectMode(CENTER);
  rect(width/2, height/2, 252, height+10);
  rectMode(CORNER);
  noStroke();
  //strokeWeight(1);
  //road lines
  int i;
  for (i=-1; i< height; i+=25) {
    fill(255);
    rect(width/2-42, i, 5, 15);
    i++;
  }

  for (i=-1; i< height; i+=25) {
    fill(255);
    rect(width/2+42, i, 5, 15);
  }
  //This is the main car that is being driven home by player
  carPlayer(x, y);

  trafficCar(trafficx1, trafficy1, paintCar1, paintCar2, paintCar3);
  trafficTruck(trafficx2, trafficy2, paintTruck1, paintTruck2, paintTruck3);
  trafficSemiTruck(trafficx3, trafficy3, paintSemiTruck1, paintSemiTruck2, paintSemiTruck3);
  trafficCar (trafficx4, trafficy4, paintCar1b, paintCar2b, paintCar3b);

  tree(treex1L, treey1L);
  tree(treex2L, treey2L);
  tree(treex3L, treey3L);

  tree(treex1R, treey1R);
  tree(treex2R, treey2R);
  tree(treex3R, treey3R);


  //player driving movements
  if (forward) y-=3;
  if (reverse) y+=3;
  if (turnL) x-=3;
  if (turnR) x+=3;

  //traffic speed
  trafficy1 += 2;
  trafficy2 += 2;
  trafficy3 += 3;
  trafficy4 += 2;



  // this code makes the traffic 
  if (trafficy1 > height +100) {
    trafficx1 = (int) random((width/2-100), (width/2-42));
    trafficy1 = (int) random(-400, -20);
    paintCar1 = random(255);
    paintCar2 = random(255);
    paintCar3 = random(255);
  }
  if (trafficy2 > height +100) {
    trafficx2 = (int) random((width/2-45), (width/2+43));
    trafficy2 = (int) random(-400, -20);
    paintTruck1 = random(255);
    paintTruck2 = random(255);
    paintTruck3 = random(255);
  }
  if (trafficy3 > height +100) {
    trafficx3 = (int) random((width/2+43), (width/2+100));
    trafficy3 = (int) random(-400, -100);
    paintSemiTruck1 = random(255);
    paintSemiTruck2 = random(255);
    paintSemiTruck3 = random(255);
  }
  if (trafficy4 > height +100) {
    trafficx4 = (int) random((width/2-100), (width/2+100));
    trafficy4 = (int) random(-400, -100);
    paintCar1b = random(255);
    paintCar2b = random(255);
    paintCar3b = random(255);
  }

  //trees passing by
  treey1L += 1;
  treey2L += 1;
  treey3L += 1;

  treey1R += 1;
  treey2R += 1;
  treey3R += 1;

  if (treey1L > height +100) {
    treex1L = (int) random(40, (width/2-165));
    treey1L = (int) random(-400, -50);
  }
  if (treey2L > height +100) {
    treex2L = (int) random(40, (width/2-165));
    treey2L = (int) random(-400, -70);
  }
  if (treey3L > height +100) {
    treex3L = (int) random(40, (width/2-165));
    treey3L = (int) random(-400, -100);
  }

  //trees on the right side of the road

  if (treey1R > height +100) {
    treex1R = (int) random((width/2+165), width);
    treey1R = (int) random(-400, -50);
  }
  if (treey2R > height +100) {
    treex2R = (int) random((width/2+165), width);
    treey2R = (int) random(-400, -80);
  }
  if (treey3R > height +100) {
    treex3R = (int) random((width/2+165), width);
    treey3R = (int) random(-400, -60);
  }

  /*if (x > width - 25 || x < 25) {
   textFont(f,48);
   text("Click to Restart", width/2 - 80,height-80);
   noLoop();                                    //Stop looping at the end of the draw function
   lost=true;
   
   }*/
  if (x < width/2-101 || x > width/2 + 101) {
    wrecks= wrecks-0.01;


    fill(255);
    textFont(f, 24);
    text("Watch the road!!", width/2 - 95, height/2 - 180);
    textFont(f, 24);
    text("YOU'RE WRECKING!", width/2 - 100, height/2 - 145);


    fill(255, 0, 0);
    textSize(13);
    text("Wrecks = "+wrecks, 380, 25);  //Print the score on the screen
  }



  if (wrecks<=0)                                  //Check to see if you lost
  {

    textFont(f, 48);
    text("Click to Restart", width/2 - 180, height/2);
    //noLoop();                                    //Stop looping at the end of the draw function
    lost=true;
  }

  //fill(a);
  //rect(0,0,width, height);
  //if (counter > 4000) {
  //a-= 0.15;
  //}
  //----------------------------------------------------------------------//
  //                          Opening Scene                               //
  //----------------------------------------------------------------------//
  if (counter < 900) {
    //day sky
    background(211, 239, 255);
    fill(20);
    noStroke();
    rect(0, height/4*3, width, 200);
    
    xDrive += 1.65;

    carShadow();
    if (counter > 3216) {
      xDrive = 310;
    }
    if (counter >= 3000 && counter < 3300) { 
      nightTime();
      windowOn(323, 310, 10, 2);
    }  
    else if (counter >= 3300 && counter < 3500) {
      nightTime();
      windowOff(323, 310, 10, 2);
    }
  }
  
  
    
  
  //----------------------------------------------------------------------//
  //                        Winners Ending Scene                          //
  //----------------------------------------------------------------------//
  if (counter > 3000 && counter < 3600) {

    //night sky
    background(15, 17, 59);
    fill(90);
    noStroke();
    rect(0, height/4*4, width, 200);//ground

    xDrive += 1.65;

    carShadow();
    if (counter > 3216) {
      xDrive = 310;
    }
    //rect(0, height/4*3, width, 200);//ground

    if (counter >= 3000 && counter < 3300) { 
      nightTime();
      windowOn(323, 310, 10, 2);
    }  
    else if (counter >= 3300 && counter < 3500) {
      nightTime();
      windowOff(323, 310, 10, 2);
    }
    else if (counter >= 3500) {
      fill(255, 241, 107);
      textFont(f, 38);
      text("YOU MADE IT HOME!!", width/2-180, height/2-50);
      textFont(f, 28);
      text("Click to Play Again", width/2 - 180, height/2+50);
      lost = true;
      noLoop();
    }
  }




  counter++;
}



//------------------------END OF DRAW FUNCTION-----------------------//
void mousePressed() {
  if (lost==true || lost == false) { // game is already over
    wrecks = 5;
    x = width/2;
    y = height/2+200;
    lost = false;
    loop();
  }
}


//----------------------------------------------------------------------//
//                     Functions for Player/Driver                      //
//----------------------------------------------------------------------//

void carPlayer (float x, float y) {
  noStroke();
  fill(255, 166, 222);
  rect(x-25, y-67, 50, 134);//car body
  fill(0);
  stroke(255, 166, 222);
  strokeWeight(2);
  rect(x-24, y-22, 47, 47);//windows
  noStroke();
  fill(255);
  rect(x-18, y-15, 36, 34);//roof top
  stroke(255); 
  strokeWeight(3);
  strokeCap(ROUND);
  line(x-23, y-21, x-18, y-15);
  line(x-23, y+8, x-16, y+8);
  line(x-24, y+24, x-18, y+18);
  line(x+17, y-15, x+22, y-21);
  line(x+23, y+8, x-16, y+8);
  line(x+17, y+19, x+22, y+24);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) forward = true; 
    if (keyCode == DOWN) reverse = true; 
    if (keyCode == LEFT) turnL = true; 
    if (keyCode == RIGHT) turnR = true;
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) forward = false; 
    if (keyCode == DOWN) reverse = false; 
    if (keyCode == LEFT) turnL = false; 
    if (keyCode == RIGHT) turnR = false;
  }
}

//----------------------------------------------------------------------//
//           Functions for Traffic Vehicles & Shrubbery                 //
//----------------------------------------------------------------------//

void trafficSemiTruck (float x, float y, float r, float g, float b) {
  noStroke();
  fill(r, g, b);
  rect(x-28, y-60, 55, 92);//car body
  fill(0);
  stroke(r, g, b);
  strokeWeight(2);
  rect(x-24, y-22, 47, 41);//windows
  noStroke();
  fill(r-70, g-70, b-70); 
  rect(x-25, y+5, 50, 30);
  fill(r-100, g-120, b-120);

  rect(x-30, y+9, 59, 185);//trailer of truck
  noStroke();
  fill(r, g, b);
  rect(x-18, y-15, 36, 20);//roof top
  stroke(r, g, b);
  strokeWeight(3);
  strokeCap(ROUND);
  line(x-23, y-21, x-18, y-15);
  line(x-23, y+3, x-16, y+3);
  //line(x-24, y+24, x-18, y+18);
  line(x+17, y-15, x+22, y-21);
  line(x+23, y+3, x-16, y+3);
  //line(x+17, y+19, x+22, y+24);
}

void trafficCar (float x, float y, float r, float g, float b) {
  noStroke();
  fill(r, g, b);
  rect(x-25, y-47, 50, 90);//car body
  fill(0);
  stroke(r, g, b);
  strokeWeight(2);
  rect(x-24, y-22, 47, 47);//windows
  noStroke();
  fill(r, g, b);
  rect(x-18, y-15, 36, 34);//roof top
  stroke(r, g, b);
  strokeWeight(3);
  strokeCap(ROUND);
  line(x-23, y-21, x-18, y-15);
  line(x-23, y+3, x-16, y+3);
  line(x-24, y+24, x-18, y+18);
  line(x+17, y-15, x+22, y-21);
  line(x+23, y+3, x-16, y+3);
  line(x+17, y+19, x+22, y+24);
}

void trafficTruck (float x, float y, float r, float g, float b) {
  noStroke();
  fill(r, g, b);
  rect(x-25, y-57, 50, 135);//car body
  fill(0);
  stroke(r, g, b);
  strokeWeight(2);
  rect(x-24, y-22, 47, 28);//windows 
  fill(r-80, b-80, g-80);
  noStroke();
  rect(x-22, y+6, 44, 69);//bed of truck
  noStroke();
  fill(r, g, b);
  rect(x-18, y-15, 36, 20);//roof top
  stroke(r, g, b);
  strokeWeight(3);
  strokeCap(ROUND);
  line(x-23, y-21, x-18, y-15);
  line(x-23, y+3, x-16, y+3);
  //line(x-24, y+24, x-18, y+18);
  line(x+17, y-15, x+22, y-21);
  line(x+23, y+3, x-16, y+3);
  //line(x+17, y+19, x+22, y+24);
}


void tree (float treeX, float treeY) {
  noStroke();
  fill(#0D900E);
  ellipse(treeX, treeY, 50, 50);
  ellipse(treeX - 15, treeY - 10, 45, 30);
  ellipse(treeX + 15, treeY - 10, 55, 40);
  ellipse(treeX + 20, treeY + 20, 55, 60);
  ellipse(treeX - 15, treeY + 20, 75, 60);
  ellipse(treeX - 10, treeY + 20, 50, 80);
}


//----------------------------------------------------------------------//
//                    Functions for GAME OVER Screen                    //
//----------------------------------------------------------------------//

void introScreen() {
  background(bg);

  textFont(f, 22);
  text("Trying to Get Home", width/2 - 150, height/2 - 125);
  text("Use the arrow keys to navigate through the traffic", width/2 - 150, height/2 - 95);
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

/*void loserScreen() {
 background(bg);
 fill(0, 90);
 rect(width/2 -165, height/2 - 160, 335, 220);
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
 fill(#2ED7FF);
 textFont(f, 26);
 text("Press any key to restart.", width/2 - 150, height/2 + 40);
 
 }
 */










//----------------------------------------------------------------------//
//      Functions for Intro Animation & Outro Winners Animation         //
//----------------------------------------------------------------------//

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

