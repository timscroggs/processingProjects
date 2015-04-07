float x = width/2 + 150;
float y = height + 200;

float xspeed = 5;
float yspeed = 5;

void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  x=x+speed*directionX;
  y=y+speed*directionY;
  
  carPlayer(x, y);
}


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

void keyPressed () {
  if (key == CODED) {
    if (keyCode == UP) { 
      y = y - yspeed;
    } 
    else if (keyCode == DOWN) {
      y = y + yspeed;
    } 
    else if (keyCode == RIGHT) {
      x = x + xspeed;
    } 
    else if (keyCode == LEFT) {
      x = x - xspeed;
    }
  }
}





