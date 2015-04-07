void mouseReleased() {
  if (mouseButton == LEFT) {
    noLoop();
  }
  else if (mouseButton == CENTER) {
    redraw();
  }
  else if (mouseButton == RIGHT) {
    loop();
  }
}
int x = 2;
int xspeed=1;

void draw() {
  background(25);
  x+=xspeed;

  fill(255, 0, 0);
  rect(x, 35, 15, 15);
  if (x>width -15 || x<0) {
    xspeed = xspeed *-1;
  }
}

