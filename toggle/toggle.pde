boolean isShown = false;

void setup() {
  size(900,600);
  background(255);
}

void draw () {
  //background(204);
  if (isShown) {
    line(mouseX, mouseY, 85, 85);
  }
}

void mousePressed() {
  if(mouseButton == LEFT) {
    stroke(random(255),random(255),random(255));
  isShown = !isShown;
  }
}

void mouseReleased() {
  if(mouseButton == LEFT) {
  isShown = false;
  }
  else if (mouseButton == RIGHT) {
    background(255);
  }
}
