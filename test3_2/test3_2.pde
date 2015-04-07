void mousePressed() {
  if (mousePressed == true && mouseButton == LEFT) {
    background(204);
  }
  else if (mousePressed == true && mouseButton == RIGHT) {
    noLoop();
  }
  else if (mouseButton == CENTER && mousePressed == true) {
    loop();
  }
}

void draw() {
  fill(255,0,0);
  rect(mouseX, mouseY, 15,15);
}
