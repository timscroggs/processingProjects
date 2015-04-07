//this draws the animation at the beginning of the game
//maybe can get annoying because it can't be skipped!

void draw_intro () {

  background(211, 239, 255);
  fill(20);
  noStroke();
  rect(0, height/4*3, width, 200);

  carShadow1();
  dayTime();

  if (xDrive1 > width+40) {
    gameState = 1;
  }
  if (counterIntro<= 80) {
    windowOn(260, 265, 10, 1);
  }
  else if (counterIntro> 156 && counterIntro<= 556) {
    xDrive1 += 1.65;
  }
  textFont(fBig, 50);
  //text("5:00 PM", width/2-100, height/2-175);
  text("5:00 PM", 20, height/2+150);

  counterIntro++;
}

