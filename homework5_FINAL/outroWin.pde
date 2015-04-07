//draws a awesome animation of the Pink Cadillac arriving home after dark
//IF you can make it through rush hour!

void draw_outroWin () {
  //night sky
  frameRate(60);
  background(15, 17, 59);
  fill(90);
  noStroke();
  rect(0, height/4*3, width, 200);//ground

  fill(255);
  textFont(f, 48);
  text("YOU WIN!!", width/2 - 130, height/2-125);
  textFont(f, 24);
  text("You made it home.", width/2 - 115, height/2 - 65);


  carShadow2();
  nightTime();
  windowOff(322, 495, 10, 1);

  if (counterOutro<=240) {
    xDrive2 += 1.65;
  }

  if (counterOutro > 345) {
    windowOn(322, 495, 10, 1);
  }

  textFont(f, 18);
  text("Hit Any Key to Play Again", width/2 - 100, height/2 + 355);

  counterOutro++;
}

