// Project 3 - USE THE MOUSE TO MAKE THE SUN SET HAPPEN

color [] fireflicker = {#fb1111, #fb5811, #fbbc11, #bc420c};
float x;
float y;
float bx;
float by;
int ellipseSize = 200;
boolean overBox = false;
boolean locked = false;
float xOffset = 0.0; 
float yOffset = 0.0;
int r = 181;
int g = 195;
int b = 202;

void setup() {
   size(600,600);
   bx = width/3.0;
   by = height/2.0;
   ellipseMode(CENTER);
   colorMode(RGB);
   frameRate(60);

 
}

void leaf1(float x, float y) {
  PImage img;
  img = loadImage("leaf2.png");
  image(img, x, y); 
  
}

void leaf2(float x, float y) {
  PImage img;
  img = loadImage("leaf1.png");
  image(img, x, y);
  
}
  
void draw() {
  println(mouseX + "  " + mouseY);

   if(mousePressed == true) {
     fill(255,138,0);
   } else {
     fill(0);
   }
   
   
   background(r,g,b);

  
  // Test if the cursor is over the box 
  if (mouseX > bx-ellipseSize && mouseX < bx+ellipseSize && 
      mouseY > by-ellipseSize && mouseY < by+ellipseSize) {
    overBox = true;  
    if(!locked) { 
      noStroke(); 
      fill(255,138,0);
    } 
  } else {
    noStroke();
    fill(255,138,0);
    overBox = false;
  }
  
  
  // Draw the ellipse
  ellipse(bx, by, ellipseSize, ellipseSize); 
  
  //ground
  noStroke();
  fill(101,126,79); 
  rect(0,450,600,150);
  
  //house
  fill(130,102,55);
  rect(420,360,130,138);
  fill(20);
  triangle(405,360,485,280,565,360);
  noStroke();
  fill(102,76,35);
  stroke(55,42,19);
  strokeWeight(.5);
  rect(460,400,52,97);
  fill(50);
  ellipse(471,450,8,8);
  fill(0);
  ellipse(487,422,23,23);
  frameRate(60);
  fill(fireflicker[int(random(0, 4))]);
  frameRate(60);
  ellipse(487,422,21,21);
  fill(#6d6d6d);
  noStroke();
  quad(506,301,522,282,534,283,514,309);
  noStroke();
  quad(522,282,516,255,523,253,534,283);
  triangle(511,257,515,241,528,252);
  
  
  //smoke
  PImage img;
  img = loadImage("smoke.png");
  image(img, random(473,479),random (39,41));
  frameRate(3);

   
  //leaves on ground
  leaf1(300, 460);
  leaf1(180, 520);
  leaf1(100, 450);
  leaf1(480, 540);
  leaf1(80, 550);
  leaf1(360, 500);
  
  leaf2(210, 460);
  leaf2(400, 520);
  leaf2(30, 490);
  leaf2(530, 480);
  leaf2(280, 500);
  
  //tree
  stroke(55,42,19);
  strokeWeight(3);
  smooth();
  line(279,488,279,352);
  
  //branches
  line(279,352,230,287);
  line(279,352,325,280);
  line(279,352,279,260);
  line(249,312,224,312);
  line(249,312,256,279);  
  line(279,280,291,268);
  line(279,288,263,262);
  line(308,306,327,304);
  line(309,304,305,279);
  line(294,328,316,321);
  
}

void mouseMoved(){
  if (mouseX > bx-100 && mouseX < bx+100 && 
      mouseY > by-100 && mouseY < by+100) {
      overBox = true;
      if(!locked) {
        noStroke();
        cursor(HAND);
  }
} else {
  noStroke();
  cursor(ARROW);
  overBox = false;
}
}

void mousePressed() {
  frameRate(60);

  if(overBox) { 
    locked = true; 
    fill(150);
    noStroke();
  } else {
    locked = false;
  }
  xOffset = mouseX-bx; 
  yOffset = mouseY-by;
  

}

void mouseDragged() {
  frameRate(60);

  if(locked) {
    noStroke();
    bx = mouseX-xOffset; 
    by = mouseY-yOffset;
 
  }
}

void mouseReleased() {
  noStroke();
  frameRate(60);

  locked = false;
}


