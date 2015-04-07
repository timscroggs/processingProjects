/* Tim Scroggs
 01.17.14
 CSCI 182 002
 Self-Portrait Assignment
 */

void setup () {
  size (600, 400);
  smooth();
  background(#A8C7DB);
  /*for (int h = 300; h <= 400; h += 2) {
    for (int i = 100; i <= 120; i += 2) {
      line(h, i, i+2, i+4);
    }
  }*/
}

void draw () {
  println(mouseX, mouseY);
  myHead ();
}

void myHead () {
  fill(#E8D9A9);
  noStroke();
  arc(300, 100, 100, 150, radians(0), radians(180));//head
  ellipse(300, 100, 100, 60);

  fill(255);
  ellipse(280, 116, 20, 10); //both eyes
  ellipse(316, 116, 20, 10);
  fill(#348DFF);
  ellipse(280, 116, 9, 9);//iris right
  fill(0);
  ellipse(280, 116, 5, 5);//pupils left
  fill(#348DFF);
  ellipse(316, 116, 9, 9);//iris right
  fill(0);
  ellipse(316, 116, 5, 5);//pupils left
  stroke(#241A09, 225);
  strokeWeight(3);
  noFill();
  bezier(270,110,275,104,288,106,288,108);//eyebrows
  bezier(307,108,312,104,322,106,325,110);
  fill(#241A09, 225);
  arc(300,160,20,10, 2*PI, PI);

  //arc(280,110,20,-5, radians(0), radians(320));
}

