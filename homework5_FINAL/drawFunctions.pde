
//----------------------------------------------------------------------//
//           Functions for Traffic Vehicles & Shrubbery                 //
//----------------------------------------------------------------------//

//function for the Semitruck
void trafficSemiTruck (float x, float y, float r, float g, float b) {
  noStroke();
  fill(r, g, b);
  rect(x-28, y-127, 55, 92);//car body
  fill(0);
  stroke(r, g, b);
  strokeWeight(2);
  rect(x-24, y-89, 47, 41);//windows
  noStroke();
  fill(r-70, g-70, b-70); 
  rect(x-25, y-62, 50, 30);
  fill(r-100, g-120, b-120);

  rect(x-30, y-59, 59, 185);//trailer of truck
  noStroke();
  fill(r, g, b);
  rect(x-18, y-82, 36, 20);//roof top
  stroke(r, g, b);
  strokeWeight(3);
  strokeCap(ROUND);
  line(x-23, y-88, x-18, y-82);
  line(x-23, y-64, x-16, y-64);
  //line(x-24, y+24, x-18, y+18);
  line(x+17, y-82, x+22, y-88);
  line(x+23, y-64, x-16, y-64);
  //line(x+17, y+19, x+22, y+24);
}

//function for the small car

void trafficCar (float x, float y, float r, float g, float b) {
  noStroke();
  fill(r, g, b);
  rect(x-25, y-47, 50, 90);//car body
  fill(0);
  stroke(r, g, b);
  strokeWeight(2);
  rect(x-24, y-22, 47, 47);//windows
  noStroke();
  fill(r, g, b);
  rect(x-18, y-15, 36, 34);//roof top
  stroke(r, g, b);
  strokeWeight(3);
  strokeCap(ROUND);
  line(x-23, y-21, x-18, y-15);
  line(x-23, y+3, x-16, y+3);
  line(x-24, y+24, x-18, y+18);
  line(x+17, y-15, x+22, y-21);
  line(x+23, y+3, x-16, y+3);
  line(x+17, y+19, x+22, y+24);
}

//function for the pickup truck

void trafficTruck (float x, float y, float r, float g, float b) {
  noStroke();
  fill(r, g, b);
  rect(x-25, y-57, 50, 135);//car body
  fill(0);
  stroke(r, g, b);
  strokeWeight(2);
  rect(x-24, y-22, 47, 28);//windows 
  fill(r-80, b-80, g-80);
  noStroke();
  rect(x-22, y+6, 44, 69);//bed of truck
  noStroke();
  fill(r, g, b);
  rect(x-18, y-15, 36, 20);//roof top
  stroke(r, g, b);
  strokeWeight(3);
  strokeCap(ROUND);
  line(x-23, y-21, x-18, y-15);
  line(x-23, y+3, x-16, y+3);
  //line(x-24, y+24, x-18, y+18);
  line(x+17, y-15, x+22, y-21);
  line(x+23, y+3, x-16, y+3);
  //line(x+17, y+19, x+22, y+24);
}

//function for the tree

void tree (float treeX, float treeY) {
  noStroke();
  fill(#0D900E);
  ellipse(treeX, treeY, 50, 50);
  ellipse(treeX - 15, treeY - 10, 45, 30);
  ellipse(treeX + 15, treeY - 10, 55, 40);
  ellipse(treeX + 20, treeY + 20, 55, 60);
  ellipse(treeX - 15, treeY + 20, 75, 60);
  ellipse(treeX - 10, treeY + 20, 50, 80);
}


//--------------------------------------------------------------------//
//FUNCTIONS FOR THE ANIMATION
//--------------------------------------------------------------------//

void nightTime () { //draws the night scene with home and its shadows
  noStroke();
  fill(222, 222, 222);//moon color
  ellipse(100, 100, 45, 45);//moon
  fill(40);//house
  rect(300, height/4*3-80, 65, 80);
  fill(0);//shadow
  quad(300, height/4*3, 365, height/4*3, 430, height/4*3+40, 365, height/4*3+40);
  fill(40);//roof
  triangle(285, height/4*3-80, 380, height/4*3-80, 332, height/4*3-130);
  strokeCap(SQUARE);//roof line
  stroke(0);
  strokeWeight(1);
  line(300, height/4*3-80, 365, height/4*3-80);
  noStroke();
  fill(0);//shadow of roof
  triangle(350, height/4*3+40, 445, height/4*3+40, 488, height/4*3+105);
}


void dayTime () { //draws the daytime scene with the corporate building
  noStroke();
  fill(234, 168, 0);
  ellipse(100, 100, 45, 45);

  //the building
  fill(80);
  rect(250, height/4*3-305, 113, 305);

  //shadow  
  fill(0);
  quad(250, height/4*3, 363, height/4*3, 500, height/4*3+150, 385, height/4*3+150);

  for (int i = 260; i < 340; i+=24) { //using a loop to draw all the windows
    for (int j= 265; j < 520; j+=30) {
      windowOff(i, j, 10, 1);
    }
  }
}

void windowOn (float x, float y, float xSize, float yGap) {//window with the lights on
  fill(255, 241, 107);
  rect(x, y, xSize, xSize);
  rect(x+xSize+yGap, y, xSize, xSize);
  rect(x, y+xSize+yGap, xSize, xSize);
  rect(x+xSize+yGap, y+xSize+yGap, xSize, xSize);
}

void windowOff (float x, float y, float xSize, float yGap) { //window with the lights out
  fill(0);
  rect(x, y, xSize, xSize);
  rect(x+xSize+yGap, y, xSize, xSize);
  rect(x, y+xSize+yGap, xSize, xSize);
  rect(x+xSize+yGap, y+xSize+yGap, xSize, xSize);
}

void carShadow1 () { //This function creates my cool cadillac with white wall tires!!
  fill(255, 166, 222);
  rect(xDrive1-27, 353+186, 109, 13);
  fill(255, 125, 180);
  arc(xDrive1, 364+186, 22, 20, -PI, 0);
  arc(xDrive1+55, 364+186, 22, 20, -PI, 0);
  //tires
  fill(0);
  ellipse(xDrive1, 365+186, 19, 19);
  ellipse(xDrive1 + 55, 365+186, 19, 19);
  fill(100);
  ellipse(xDrive1, 365+186, 6, 6);
  ellipse(xDrive1 + 55, 365+186, 6, 6);
  noFill();
  stroke(255);
  strokeWeight(1.5);
  ellipse(xDrive1, 365+186, 15, 15);
  ellipse(xDrive1 + 55, 365+186, 15, 15);
  fill(255);
  quad(xDrive1+5, 352+186, xDrive1+12, 340+186, xDrive1+43, 340+186, xDrive1+50, 352+186);
  fill(0);
  quad(xDrive1+7, 351+186, xDrive1+13, 341+186, xDrive1+42, 341+186, xDrive1+48, 351+186);
  stroke(255);
  strokeWeight(2);
  line(xDrive1+21.5, 351+186, xDrive1+21.5, 340+186);
  noStroke();

  //shadow
  noStroke();
  fill(0);
  quad(xDrive1-20, 375+186, xDrive1+92, 375+186, xDrive1+116, 390+186, xDrive1+8, 390+186);
  quad(xDrive1+20, 385+186, xDrive1+90, 385+186, xDrive1+90, 400+186, xDrive1+50, 400+186);
}

void carShadow2 () { //This function creates my cool cadillac with white wall tires!!
  fill(255, 166, 222);
  rect(xDrive2-27, 353+185, 109, 13);
  fill(255, 125, 180);
  arc(xDrive2, 364+185, 22, 20, -PI, 0);
  arc(xDrive2+55, 364+185, 22, 20, -PI, 0);
  //tires
  fill(0);
  ellipse(xDrive2, 365+185, 19, 19);
  ellipse(xDrive2 + 55, 365+185, 19, 19);
  fill(100);
  ellipse(xDrive2, 365+185, 6, 6);
  ellipse(xDrive2 + 55, 365+185, 6, 6);
  noFill();
  stroke(255);
  strokeWeight(1.5);
  ellipse(xDrive2, 365+185, 15, 15);
  ellipse(xDrive2 + 55, 365+185, 15, 15);
  fill(255);
  quad(xDrive2+5, 352+185, xDrive2+12, 340+185, xDrive2+43, 340+185, xDrive2+50, 352+185);
  fill(0);
  quad(xDrive2+7, 351+185, xDrive2+13, 341+185, xDrive2+42, 341+185, xDrive2+48, 351+185);
  stroke(255);
  strokeWeight(2);
  line(xDrive2+21.5, 351+185, xDrive2+21.5, 340+185);
  noStroke();

  //shadow
  noStroke();
  fill(0);
  quad(xDrive2-20, 375+185, xDrive2+92, 375+185, xDrive2+116, 390+185, xDrive2+8, 390+185);
  quad(xDrive2+20, 385+185, xDrive2+90, 385+185, xDrive2+90, 400+185, xDrive2+50, 400+185);
}

