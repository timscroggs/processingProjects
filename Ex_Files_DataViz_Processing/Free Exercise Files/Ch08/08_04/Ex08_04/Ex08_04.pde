// Ex08_04
// Based on Ex07_01

void setup() {
  size(600, 200);
  frameRate(10);
  background(255);
}

void draw() {
  noStroke();
  fill(220, 0, 0);
  ellipse(mouseX, mouseY, 10, 10);
  fill(120);
  ellipse(pmouseX, pmouseY, 10, 10);
  stroke(120);
  line(mouseX, mouseY, pmouseX, pmouseY);
  saveFrame("frames/####.png");          // This is the only new line
}

void mousePressed() {
  background(255);
}
