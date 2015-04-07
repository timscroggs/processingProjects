float x = 0;
float y = 0;
float xspeed = 5;
float yspeed = 3;

void setup() {
  size(300,300);
  smooth();
}

void draw() {
  background(255);
  x = x + xspeed;
  y = y + yspeed;
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  stroke(0);
  fill(175);
  ellipse(x,y,20,20);
  
 }
