/*  Tim Scroggs
 03/27/2014
 CSCI 182_002
 Homework 5 - The Game: "Get Home!"
 Description: This game is a continuation of my animation in homework 4. The game acknowledges
 the countless time we spend in cars getting from here to there.  The pink caddy is now put under
 your control and you are responsible for just trying to get home.
 
 Directions: Using the four arrow keys (up - forward, down - reverse, right - right, and left - left),
 the player must navigate through traffic for ten virtual miles which can be viewed as a meter in the
 upper left-hand corner. However, they must abide by realistic rules for driving becasue with every 
 collision with another vehicle or even running off the road will drain their health meter. The player 
 gets only five wrecks aach round before the game is over.  
 **Please Note: Hitting other vehicles reduces the player's health a lot more than running off the road. 
 */
//--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==-===-=-=-=-=--==-=-==-=--=//
//GET HOME!
//==--==--==--==--==--==--==--===-===--==--==--==--==--==---=-=---=-=-==---=--=-=--=-=-===-=-=-=//

PFont f;
PFont fBig;
PImage bg;  //still shot of the game for Game Over state
PImage arrows;//clearly shows the the directional keys and related player control in the opening screen 
PImage home;
int counterIntro = 0;//keeps time for intro scene
int counterOutro = 0;//keeps time for outroWin scene
float r = 164; 
float g = 211; 
float b = 165;
float a = 100;
float xDrive1;
float xDrive2;

float x = width/2 + 250;
float y = height + 600;

int trafficx1, trafficx2, trafficx3, trafficx4;//xy variables for traffic vehicles
int trafficy1, trafficy2, trafficy3, trafficy4;

int treex1L, treex2L, treex3L;//xy variables for shrubbery along road side
int treey1L, treey2L, treey3L;

int treex1R, treex2R, treex3R;
int treey1R, treey2R, treey3R;

// with these sets of paint color variables we get a wide variety of randomly painted vehicles on the road
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

//Sky tint color variables used to turn day into night as the player drives toward home
float skyR = 255;
float skyG = 255;
float skyB = 0;
float skyA = 0;

//variables used to direct car with arrow keys

boolean forward = false;
boolean turnR = false;
boolean turnL = false;
boolean reverse = false;

int miles = 0; 
float wrecks = 5.01;
//boolean lost = false;

int gameState; //0 is menu, 1 is game, 2 is gameover, 3 is intro, 4 is outroWin
int gameStartFrame;


void setup() {
  size(500, 750);
  smooth();
  xDrive1 = 320;
  xDrive2 = -75;
  gameState=0;
  f = loadFont("HelveticaNeue-Bold-48.vlw");
  fBig = loadFont("HelveticaNeue-Bold-150.vlw");
  bg = loadImage("introBackground.jpg");
  arrows = loadImage("ArrowKeys.png");
  home = loadImage("home.png");

  noCursor();


  //initial x,y values for traffic vehicles
  trafficy1 = 0;
  trafficy2 = -300;
  trafficy3 = -200;
  trafficy4 = -25;
  trafficx1 = width/2-85;
  trafficx2 = width/2+81;
  trafficx3 = width/2-5;
  trafficx4 = width/2-280;

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

  switch(gameState) {
  case 0:
    draw_menu();
    break;
  case 1:
    draw_game();
    break;
  case 2:
    draw_gameOver();
    break;
  case 3:
    draw_intro();
    break;
  case 4:
    draw_outroWin();
    break;
  }
}


//-------------------------------------------------------------------//
//------------------------END OF DRAW FUNCTION-----------------------//
//-------------------------------------------------------------------//


//function to draw a menu that gives game diretions to the player
void draw_menu () {
  background(bg);
  fill(0, 95);
  rect(0, 0, width, height);
  fill(255);
  textFont(fBig, 150);
  text("Get", 15, height/2-200);
  text("Home!", 15, height/2-80);
  textFont(f, 20);
  text("Use the arrow keys to navigate through the", 25, height/2-35);
  text("traffic as you make your way home from work.", 25, height/2);

  text("You must travel 10 miles (which is seen in the", 25, height/2+55);
  text("top left corner). But be careful not to run off the", 25, height/2+90);
  text("road or hit other cars – YOU ONLY GET 5 WRECKS.", 20, height/2+125);
  //text("or hit other cars – YOU ONLY GET 5 WRECKS.", 20, height/2+160);
  fill(0, 190);
  rect(0, height/2+150, width, height);
  fill(255);
  textFont(f, 28);
  text("Key Legend:", 40, height/2+190);

  image(arrows, 190, 510);
  fill(255);
  noStroke();
  rect(0, 710, width, 40);
  fill(255, 0, 0);
  text("Hit Any Key to Play", width/2-125, height/2+365);
}


//function that IS THE GAME!!!

void draw_game() {
  background(r, g, b, a);

  fill(80);
  stroke(255);
  strokeWeight(10);
  stroke(#F0C518);
  strokeWeight(5);
  rectMode(CENTER);
  rect(width/2, height/2, 252, height+10);
  rectMode(CORNER);
  noStroke();
  //strokeWeight(1);

  //------------------------------------------------------// 
  //road lines that move down the screen with the trees//

  int i;
  for (i=-35; i< height+50; i+=25) {
    fill(255);
    rect(width/2-42, (i+frameCount)%(height+50)-35, 5, 15);//crazy people math!!
  }

  for (i=-35; i< height+50; i+=25) {
    fill(255);
    rect(width/2+42, (i+frameCount)%(height+50)-35, 5, 15);
  }

  //------------------------------------------------------// 


  //This is the Pink Cadillac being driven by player
  carPlayer(x, y);

  //These values give control over the traffic through adjustable variables
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


  //player's driving movement speeds
  if (forward) y-=3;
  if (reverse) y+=3;
  if (turnL) x-=3;
  if (turnR) x+=3;

  //traffic speeds
  trafficy1 += 2;
  trafficy2 += 2;
  trafficy3 += 3;
  trafficy4 += 2;



  // this code makes the traffic continuously flow from the top of the screen and then reset after 
  // going below the bottom of the screen - the cars are strategically spaced to make the game challenging
  // but not impossible 
  if (trafficy1 > height +100) {
    trafficx1 = width/2-84;
    trafficy1 = -100;
    paintCar1 = random(255);
    paintCar2 = random(255);
    paintCar3 = random(255);
  }
  if (trafficy2 > height +100) {
    trafficx2 = width/2+81;
    trafficy2 = -200;
    paintTruck1 = random(255);
    paintTruck2 = random(255);
    paintTruck3 = random(255);
  }
  if (trafficy3 > height +100) {
    trafficx3 = width/2-5;
    trafficy3 = -400;
    paintSemiTruck1 = random(255);
    paintSemiTruck2 = random(255);
    paintSemiTruck3 = random(255);
  }
  if (trafficy4 > height +100) {
    trafficx4 = width/2+86;
    trafficy4 = -220;
    paintCar1b = random(255);
    paintCar2b = random(255);
    paintCar3b = random(255);
  }

  //speed of trees passing by
  treey1L += 1;
  treey2L += 1;
  treey3L += 1;

  treey1R += 1;
  treey2R += 1;
  treey3R += 1;


  //random but specific placement of trees passing by
  //trees on the left side of the road

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

  //using frameCount to keep track of miles the player must traverse to win the game – 
  //it is also increasing the frameRate as they get closer to the goal
  //


  miles=(int)((frameCount - gameStartFrame)/360);
  frameRate(70+10*(miles-1));


  //---------------------------------------------------------------------------------//
  //  This is where the health of the players car and the distance they have traveled
  // displayed on the screen in the top left and right corners

  fill(255, 0, 0);
  textFont(f, 13);
  text("Miles traveled = "+miles, 8, 25); //Print the miles on the screen
  text("Wrecks = "+(int)wrecks, 410, 25);  //Print the wrecks on the screen

  // if statements to create boundaries for the players car so that they are forced to drive
  // safetly.  Breaking these rules causes vehicle health to be taken away.
  if (x < width/2-101 || x > width/2 + 101) {
    wrecks= wrecks-0.01;
    fill(255);
    textFont(f, 24);
    text("Watch the road!!", width/2 - 95, height/2 - 180);
    fill(255, 0, 0);
    textFont(f, 24);
    text("YOU'RE WRECKING!", width/2 - 115, height/2 - 145);

    // this is nice little health bar so player can visualize their death!

    noFill();
    strokeWeight(4);
    stroke(255, 0, 0);
    rect(width/2-75, height/2-115, 165, 45);
    fill(255, 0, 0);
    rect(width/2-75, height/2-115, wrecks*30, 45);
  }

  if (y >height + 55 || y < 0 + 50) {
    wrecks= wrecks-0.07;
    fill(255);
    textFont(f, 24);
    text("Watch the road!!", width/2 - 95, height/2 - 180);
    fill(255, 0, 0);
    textFont(f, 24);
    text("YOU'RE WRECKING!", width/2 - 115, height/2 - 145);

    // this is nice little health bar so player can visualize their death!

    noFill();
    strokeWeight(4);
    stroke(255, 0, 0);
    rect(width/2-75, height/2-115, 165, 45);
    fill(255, 0, 0);
    rect(width/2-75, height/2-115, wrecks*30, 45);
  }

  //This code determines when the players car wrecks into the small car in the traffic

  if (x - trafficx1 > -50 && x - trafficx1 < 50 &&
    y - trafficy1 > -112 && y - trafficy1 < 112) {
    wrecks= wrecks-0.07;
    fill(255);
    textFont(f, 24);
    text("Watch the road!!", width/2 - 95, height/2 - 180);
    fill(255, 0, 0);
    textFont(f, 24);
    text("YOU'RE WRECKING!", width/2 - 115, height/2 - 145);

    // this is nice little health bar so player can visualize their death!

    noFill();
    strokeWeight(4);
    stroke(255, 0, 0);
    rect(width/2-75, height/2-115, 165, 45);
    fill(255, 0, 0);
    rect(width/2-75, height/2-115, wrecks*30, 45);
  }

  //This code determines when the players car wrecks into the pickup truck in the traffic

  if (x - trafficx2 > -50 && x - trafficx2 < 50 &&
    y - trafficy2 > -134.5 && y - trafficy2 < 134.5) {
    wrecks= wrecks-0.07;
    fill(255);
    textFont(f, 24);
    text("Watch the road!!", width/2 - 95, height/2 - 180);
    fill(255, 0, 0);
    textFont(f, 24);
    text("YOU'RE WRECKING!", width/2 - 115, height/2 - 145);


    // this is nice little health bar so player can visualize their death!
    noFill();
    strokeWeight(4);
    stroke(255, 0, 0);
    rect(width/2-75, height/2-115, 165, 45);
    fill(255, 0, 0);
    rect(width/2-75, height/2-115, wrecks*30, 45);
  }

  //This code determines when the players car wrecks into the semitruck in the traffic

  if (x - trafficx3 > -54.5 && x - trafficx3 < 54.5 &&
    y - trafficy3 > -194 && y - trafficy3 < 194) {
    wrecks= wrecks-0.07;
    fill(255);
    textFont(f, 24);
    text("Watch the road!!", width/2 - 95, height/2 - 180);
    fill(255, 0, 0);
    textFont(f, 24);
    text("YOU'RE WRECKING!", width/2 - 115, height/2 - 145);

    // this is nice little health bar so player can visualize their death!

    noFill();
    strokeWeight(4);
    stroke(255, 0, 0);
    rect(width/2-75, height/2-115, 165, 45);
    fill(255, 0, 0);
    rect(width/2-75, height/2-115, wrecks*30, 45);
  }

  //This code determines when the players car wrecks into the second small car in the traffic

  if (x - trafficx4 > -50 && x - trafficx4 < 50 &&
    y - trafficy4 > -112 && y - trafficy4 < 112) {
    wrecks= wrecks-0.07;
    fill(255);
    textFont(f, 24);
    text("Watch the road!!", width/2 - 95, height/2 - 180);
    fill(255, 0, 0);
    textFont(f, 24);
    text("YOU'RE WRECKING!", width/2 - 115, height/2 - 145);

    // this is nice little health bar so player can visualize their death!
    noFill();
    strokeWeight(4);
    stroke(255, 0, 0);
    rect(width/2-75, height/2-115, 165, 45);
    fill(255, 0, 0);
    rect(width/2-75, height/2-115, wrecks*30, 45);
  }
  if (miles>=10) {//changes gameState for a winner so that the outroWin code will be drawn
    gameState=4;
  } 
  else if (wrecks<=0) {//changes gameState for losers so the the game over screen will come up
    gameState=2;
  }


  //Set the color to fade slowly from day to night as the player progresses toward home
  if (frameCount%10 == 0) {
    skyR--;
    skyG--;
    skyB++;
    skyA += 0.25;
  }
  fill(skyR, skyG, skyB, skyA);
  noStroke();
  rect(0, 0, width, height);
}
//-----------------------------------------------------------------------//
//      WIN or LOSE – how the program responds
//=======================================================================//
void draw_gameOver() {
  if (wrecks<=0) {      //Check to see if you lost
    background(bg);
    textFont(f, 48);
    fill(255, 0, 0);
    text("GAME OVER", width/2 - 145, height/2-40);
    textFont(f, 22);
    fill(0);
    text("Hit Any Key to Try Again", width/2 - 125, height/2-5);
  }
  if (miles >=10) {
    gameState = 4;
    background(home);
    fill(255);
    textFont(f, 48);
    text("YOU MADE IT", width/2 - 160, height/2-125);
    text("HOME!", width/2 - 80, height/2 - 75);
  }
}



//----------------------------------------------------------------------//
//                     Functions for Player/Driver                      //
//----------------------------------------------------------------------//
//PINK CADILLAC FUNCTION!!!

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

//----------------------------------------------------------------------//
//Designates what keyPressed does based on which gameState program is in//
//----------------------------------------------------------------------//
//determines what keypressed does at varying gamestates
void keyPressed() {
  switch(gameState) {
  case 0:
    gameState=3;
    gameStartFrame=frameCount;
    break;
  case 1:
    if (key == CODED) {
      if (keyCode == UP) forward = true; 
      if (keyCode == DOWN) reverse = true; 
      if (keyCode == LEFT) turnL = true; 
      if (keyCode == RIGHT) turnR = true;
    }
    break;
  case 2:
    if (wrecks<=0 || miles >= 10) {
      wrecks = 5.1;
      miles = 0;
      skyR = 255;
      skyG = 255;
      skyB = 0;
      skyA = 0;

      //---------------------------------------------//
      //resets initial x,y values for traffic vehicles

      trafficy1 = 0;
      trafficy2 = -300;
      trafficy3 = -200;
      trafficy4 = -25;
      trafficx1 = width/2-85;
      trafficx2 = width/2+81;
      trafficx3 = width/2-5;
      trafficx4 = width/2-280;

      //reset values of trees on left side of the road
      treey1L = 15;
      treey2L = -55;
      treey3L = height/2;
      treex1L = (int) random(40, (width/2-165));
      treex2L = (int) random(40, (width/2-165));
      treex3L = (int) random(40, (width/2-165));

      //reset values of trees on right side of the road
      treey1R = 0;
      treey2R = -55;
      treey3R = 80;
      treex1R = (int) random((width/2+165), width-40);
      treex2R = (int) random((width/2+165), width-40);
      treex3R = (int) random((width/2+165), width-40);
    }
    //--------------------------------------------//

    draw_game();
    x = width/2;
    y = height/2+200;
    gameStartFrame=frameCount;
    forward = false;
    turnR = false;
    turnL = false;
    reverse = false;
    gameState=1;

    break;

  case 4:
    if (wrecks<=0 || miles >= 10) {
      wrecks = 5.1;
      miles = 0;
      skyR = 255;
      skyG = 255;
      skyB = 0;
      skyA = 0;

      //---------------------------------------------//
      //reset initial x,y values for traffic vehicles
      trafficy1 = 0;
      trafficy2 = -300;
      trafficy3 = -200;
      trafficy4 = -25;
      trafficx1 = width/2-85;
      trafficx2 = width/2+81;
      trafficx3 = width/2-5;
      trafficx4 = width/2-280;

      //reset values of trees on left side of the road
      treey1L = 15;
      treey2L = -55;
      treey3L = height/2;
      treex1L = (int) random(40, (width/2-165));
      treex2L = (int) random(40, (width/2-165));
      treex3L = (int) random(40, (width/2-165));

      //reset values of trees on right side of the road
      treey1R = 0;
      treey2R = -55;
      treey3R = 80;
      treex1R = (int) random((width/2+165), width-40);
      treex2R = (int) random((width/2+165), width-40);
      treex3R = (int) random((width/2+165), width-40);
    }  

    //--------------------------------------------//

    draw_game();
    x = width/2;
    y = height/2+200;
    gameStartFrame=frameCount;
    forward = false;
    turnR = false;
    turnL = false;
    reverse = false;
    gameState=0;
  }
}


void keyReleased() {  
  switch(gameState) {
  case 1:
    if (key == CODED) {
      if (keyCode == UP) forward = false; 
      if (keyCode == DOWN) reverse = false; 
      if (keyCode == LEFT) turnL = false; 
      if (keyCode == RIGHT) turnR = false;
      break;
    }
  }
}

