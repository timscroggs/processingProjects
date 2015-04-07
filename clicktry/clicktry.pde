PImage leaf1;
PImage leaf2;
PImage pic3;
PImage pic4;
PImage pic5;
float randLocX = random(100, 400);
float randLocY = random(100, 300);
float X = random(100, 400);
float Y = random(100, 300);
float W = random(0, 400);
float Z = random(0, 400);
Boolean bottomLeftGuyVisible = true;
void setup() {
  size(700, 700);
  frameRate(12);
  background(255);
  leaf1 = loadImage("leaf1.png");
  leaf2 = loadImage("leaf2.png");
  pic3 = loadImage("stick3.png");
  pic4 = loadImage("stick4.png");
  pic5 = loadImage("stick5.png");
}
void draw() {
  background(255);
  drawAllGuys();
}
/*
void mousePressed() {
 bottomLeftGuyVisible = true;
 }
 */
void mouseReleased() {
  // bottomLeftGuyVisible = false;
  X = random(100, 400);
  Y = random(100, 300);
}
void drawAllGuys() {
  drawAGuy(X, Y);
  /*
  if (bottomLeftGuyVisible == true) {
   drawAGuy(X, Y);
   }
   if (bottomLeftGuyVisible == false) {
   drawAGuy(W, Z);
   }
   */
}
void drawAGuy(float myX, float myY) {
  if (frameCount%8==0) {
    image(leaf1, myX, myY);
  }
  if (frameCount%8==1) {
    image(leaf2, myX, myY);
  }
  if (frameCount%8==2) {
    image(pic3, myX, myY);
  }
  if (frameCount%8==3) {
    image(leaf2, myX, myY);
  }
  if (frameCount%8==4) {
    image(leaf1, myX, myY);
  }
  if (frameCount%8==5) {
    image(pic4, myX, myY);
  }
  if (frameCount%8==6) {
    image(pic5, myX, myY);
  }
  if (frameCount%8==7) {
    image(pic4, myX, myY);
  }
}
