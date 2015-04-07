void setup() {
  size(600, 400);
  background(163, 143, 109);
}

void draw() {
  smooth();
  fill(255, 25);
  rect(50, 100, 200, 200);
  ellipse(250, 200, 25*2, 25*2);

  arc(300, 180, 250, 250, 
  radians(0), 
  radians(90));

  arc(300, 160, 250, 250, 
  radians(90), 
  radians(180));

  arc(320, 160, 250, 250, 
  radians(180), 
  radians(270));

  arc(320, 180, 250, 250, 
  radians(270), 
  radians(360));
}

