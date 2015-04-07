float x, y;
float zSize;

void snowMan (float x, float y, float zSize) {
  noStroke();
  fill(255);
  ellipse(x, y, zSize, zSize);
  ellipse(x, y-zSize*0.75, zSize*0.75, zSize*0.75);
  ellipse(x, y-zSize*1.30, zSize*0.5, zSize*0.5);
  rectMode(CENTER);
  fill(0);
  rect(x, y-zSize*1.85, zSize*0.45, zSize*0.75);
  rect(x, y-zSize*1.49, zSize*.8, zSize*0.1);
  /*fill(0);
  ellipse(x, y, wide/10, high/10);
  ellipse(x, y, wide/10, high/10);
  ellipse(x, y-85, wide/10, wide/10);
  ellipse(x, y-146, wide/10, wide/10);*/
  
}

void setup () {
  size(800, 500);
  snowMan(100, 250, 33);
  snowMan(180, 250, 3);
  snowMan(random(50,450), random(300,450), random(5,200));
  snowMan(random(50,450), random(300,450), random(5,200));
  snowMan(random(50,450), random(300,450), random(5,200));
  snowMan(width,height, height/2);
}
