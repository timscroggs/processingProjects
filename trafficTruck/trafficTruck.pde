float x = width/2 + 150;
float y = height + 200;


boolean forward = false;
boolean turnR = false;
boolean turnL = false;
boolean reverse = false;

void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  
  
  if (forward) y--;
  if (reverse) y++;
  if (turnL) x--;
  if (turnR) x++;
 
  
  trafficTruck(150, 150, 180, 53, 63);
}


void trafficTruck (float x, float y, float r, float g, float b) {
  noStroke();
  fill(r,g,b);
  rect(x-25, y-57, 50, 135);//car body
  fill(0);
  stroke(r,g,b);
  strokeWeight(2);
  rect(x-24, y-22, 47, 28);//windows 
  fill(r-80, b-80, g-80);
  noStroke();
   rect(x-22, y+6, 44, 69);//bed of truck
  noStroke();
  fill(r,g,b);
  rect(x-18, y-15, 36, 20);//roof top
  stroke(r,g,b);
  strokeWeight(3);
  strokeCap(ROUND);
  line(x-23, y-21, x-18, y-15);
  line(x-23, y+3, x-16, y+3);
  //line(x-24, y+24, x-18, y+18);
  line(x+17, y-15, x+22, y-21);
  line(x+23, y+3, x-16, y+3);
  //line(x+17, y+19, x+22, y+24);
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






