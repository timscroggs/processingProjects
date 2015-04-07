// Ex05_01

color[] rainbow = {#FFFFCD, #CC5C54, #F69162, #85A562, #7AB5DB};

void setup(){
  size(600, 200);
  smooth();
  noFill();
  strokeWeight(5);
  frameRate(5);
  background(rainbow[0]);
}

void draw(){
  float x = random(width);
  float y = random(height);
  float d = random(30, 300);
//  stroke(random(255), random(255), random(255));
  stroke(rainbow[int(random(1, 5))]);
  ellipse(x, y, d, d);
}

