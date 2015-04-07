float x = random(400);
float y = random(400);
float xdir = 1;
float x1 = random(400);
float y1 = random(400);
float x1dir = 1;
float x2 = random(400);
float y2 = random(400);
float ydir = 1;
float x3 = random(400);
float y3 = random(400);
float y1dir = 1;

void setup () {
  size(400,400);
  smooth();
  
}

void draw () {
  background(255);
  x = x + xdir;
  rectMode(CENTER);
  noStroke();
  fill(255,0,255);
  rect(x,y,30,30);
  if ((x > width-15) || (x < 15)) {
  xdir = xdir * -1;
  }
  x1 = x1 + x1dir;
  fill(0,255,255);
  rect(x1,y1,30,30);
  if ((x1 > width-15) || (x1 < 15)) {
  x1dir = x1dir * -1;
  }
  y2 = y2 + ydir;
  fill(255,255,0);
  rect(x2,y2,30,30);
  if ((y2 > height-15) || (y2 < 15)) {
  ydir = ydir * -1;
  }
  y3 = y3 + y1dir;
  fill(0);
  ellipse(x3,y3,30,30);
  if ((y3 > height-15) || (y3 < 15)) {
  y1dir = y1dir * -1;
  }
}

