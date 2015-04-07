void setup() {
  size(600, 400);
  smooth();
  PFont fortuneFont = loadFont("Serif-36.vlw");
  textAlign(LEFT);
  textFont(fortuneFont, 36);
  fill(194,122,12);
}

void draw() {
  background(11,55,69);
  float sinVal = sin(frameCount * .07);
  float scaleMul = map(sinVal, -1,1, .5, 1);
  translate(100,200);
  scale(scaleMul);
  text("Delicious apricots!", 0, 0);
}
