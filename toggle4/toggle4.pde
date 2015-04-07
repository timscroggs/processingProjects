boolean isShown = false;

void setup() {
  size(900,600);
  background(255);
}

void draw () {
  //background(204);
  if (!isShown) {
    stroke(random(255),random(255),random(255));
    line(mouseX, mouseY, 0, 0);
  }
}
/*
void mousePressed() {
  if(mouseButton == LEFT) {
    stroke(random(255),random(255),random(255));
  isShown = !isShown;
  }
}
*/
void mouseReleased() {
  if(mouseButton == LEFT) {
  isShown = false;
  }
  else if (mouseButton == RIGHT) {
    background(255);
  }
}
