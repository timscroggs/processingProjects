float Redval = 192;
float Grnval = 64;
float Bluval = 0;
color MyColor;

/*  This version of the code is not as efficient as the second
 version below because the draw function is longer
 
 void setup() {
 size(600, 400);
 MyColor = color(Redval, Grnval, Bluval);
 background (MyColor);
 }
 
 void draw() {
 
 if (mousePressed == true) {
 //background(255, 255, 255);
 Bluval = map(mouseX, 0, 599, 0, 255);
 //map(mouseY, 0, 399, 0, 255);
 } 
 else {
 //background(MyColor);
 Redval = map(mouseX, 0, 599, 0, 255);
 Grnval = map(mouseY, 0, 399, 0, 255);
 }
 background(MyColor);
 MyColor = color(Redval, Grnval, Bluval);
 
 }
 */

void setup() {
  size(600, 400);
  MyColor = color(Redval, Grnval, Bluval);
  background (MyColor);
}

void draw() {
  background(MyColor);
}

void mouseMoved() {
  Redval = map(mouseX, 0, 599, 0, 255);
  Grnval = map(mouseY, 0, 399, 0, 255);
  MyColor = color(Redval, Grnval, Bluval);
}

void mouseDragged() {
  updateBluval();
}

void mouseClicked() {
  updateBluval();
}

void updateBluval() {
  Bluval = map(mouseX, 0, 599, 0, 255);
  MyColor = color(Redval, Grnval, Bluval);
}

