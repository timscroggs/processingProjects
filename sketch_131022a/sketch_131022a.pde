float x;
float y;

void setup(){
  size(400,400);
  colorMode(RGB); 
  background(0,255,255);
}

void sun(float x, float y, int r, int g, int b){
  noStroke();
  fill(r,g,b);
  ellipse(x,y,100,100);
}


void draw(){ // loops continously
if (mousePressed == true){
  sun(mouseX, mouseY, 255, 0, 0);
}
 else { sun(mouseX,mouseY, 0, 255, 255); } 
}
