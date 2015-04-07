/* Tim Scroggs
 01.17.14
 CSCI 182 002
 Self-Portrait Assignment
 */

PImage img;
PrintWriter output;

void setup () {
  size (680, 1080);
  smooth();
  background(255);
  img = loadImage("photoDrawing.jpg");
  image(img, 0, 0);
  stroke(150);
  for (int i = 0; i<=696; i+=10) {
    for (int j = 0; j<=1080; j+=10) {
      line(i,j,i,j);
    }
  }
  
}

void draw () {
  println(mouseX + ", " + mouseY);
 
  stroke(0);
  strokeWeight(4);
  strokeCap(ROUND);
  noFill();
  ellipse(390,974,30,35);//top button
  ellipse(390,974,6,8);
  ellipse(393,1065,25,35);//bottom button
  ellipse(393,1065,5,7);
  
  //shirt
  line(415,1080,415,950);
  bezier(415,950,415,925,410,930,385,940);
  line(368,1080,368,978);
  
  bezier(564,668,570,750,555,730,500,758);//chin end
}

