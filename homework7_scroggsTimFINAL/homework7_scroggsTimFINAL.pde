/*  Tim Scroggs
 04/19/2014
 CSCI 182_002
 Homework 7 : Objects
 
 Description: This program utilizes Object Oriented Processing (OOP) to create
 an animation using arrays of objects from a custom class I have defined below. 
 The animation is a moving "universe" of guitars (the model of all the guitars 
 features the custom designed created by Bo Diddley in 1958. This program sorta
 pays homage to the creative genius of Bo Diddley.

DIRECTIONS: There is not a real "objective" per se and it's ok if the interactivety
I have built into this program does not qualify for the extra credit, I just had a 
fun time mess around with interactivity.

  -- Scrub the screen with the cursor to bring the guitars up close 
  -- To make the guitars recede back again press and hold (drag) the mouse and 
     scrub the screen.
  -- To make all the shaking "STOP" press s.  
  -- To restart animation press g for "GO"!
  
**The custom class methods I've defined are being used simultaneously in order
to hold the array of guitars in a kind of "floating space."  Try commenting out 
one or the other methods and you will see the guitars either fly off the screen 
with hyperShrink() or grow to enormous size with hyperGrow().*/


//-------THE BO DIDDLEY UNIVERSE – WHERE THE STARS ARE GUITARS!---------------//
 

int numGuitars = 50;
Guitar [] guitArray = new Guitar [numGuitars];   // Declare the object handle

Guitar bo;

PFont diddley;

void setup() {
  size(1000, 1000);
  background(0);
  smooth();
  noStroke(); 
  diddley = loadFont("HanziPenTC-W3-48.vlw");

  bo = new Guitar(random(0, width+50), random(0, height+75), random(0, 255), random(0, 255), random(0, 255), random(100, 255), random(5, 200));

  for (int i = 0; i < numGuitars; i++) {  // Construct the array of guitar objects
    guitArray[i] = new Guitar(random(0, width+50), random(0, height+75), random(0, 255), random(0, 255), random(0, 255), random(100, 255), random(5, 200));
  }
}


void draw() {

  fill(0, 90);
  rect(width/2, height/2, width, height);

  rectMode(CORNER);
  boBackdrop(width/2, height/2);
  rectMode(CENTER);
  textFont(diddley);
  text("Diddley", width/2-75, height/2+135);
  

  for (int i = 0; i< numGuitars; i++) {  // Calling the display() class method
    guitArray[i].display();
    guitArray[i].hyperGrow();//When both methods are used simultaneously it appears as if they are buzzing with electricity as they oppose eachother
    guitArray[i].hyperShrink();
  }
}

//this function makes up the BO typography on the backdrop using primitives 
//to create an interesting background image

void boBackdrop(float x, float y) {
  //This is the static background.
  fill(255);
  noStroke();
  rect(x-80, y- 80, 20, 160);
  rect(x-60, y-80, 70, 20);
  rect(x-60, y-10, 40, 20);
  rect(x-60, y+60, 70, 20);
  quad(x-10, y+60, x+10, y+60, x-30, y- 10, x-40, y+10);
  quad(x-10, y-60, x+10, y-60, x-30, y+ 10, x-40, y-10);

  rect(x, y-10, 20, 20);
  rect(x+30, y+60, 20, 20);
  rect(x+60, y-10, 20, 20);
  rect(x+30, y-80, 20, 20);
  rect(x+30, y-10, 20, 20);
  quad(x+30, y+60, x+50, y+60, x+20, y+ 10, x, y+10);
  quad(x+30, y-60, x+50, y-60, x+20, y- 10, x, y-10);
  quad(x+30, y+60, x+50, y+60, x+80, y+10, x+60, y+ 10);
  quad(x+30, y-60, x+50, y-60, x+80, y-10, x+60, y-10);

  triangle(x+30, y-10, x+50, y-10, x+40, y-25);
  triangle(x+30, y+10, x+50, y+10, x+40, y+25);
  triangle(x-50, y-50, x-30, y-50, x-50, y-20);
  triangle(x-50, y+50, x-30, y+50, x-50, y+20);
}

//Custom class definition

class Guitar {
  float x, y, r, g, b, a, zSize;

  Guitar (float xpos, float ypos, float red, float grn, float blu, float alpha, float z) {
    x = xpos;
    y = ypos;
    r = red;
    g = grn;
    b = blu;
    a = alpha;
    zSize = z;
  } 


  //This method uses the given x, y values and resizing variable zSize to shrink all the guitars and cause them 
  //to appear as if they are flying out of sight into the background
  void hyperShrink() {
    zSize *= .98;
    x+=random(19, 20);
    y-=random(19, 20);
    x-=random(19, 20);
    y+=random(19, 20);
  }

  //This method uses the given x, y values and resizing variable zSize to scale the guitars up steadily and cause them 
  //to appear as if they are growing to massive sizes into the viewers face
  void hyperGrow() {
    zSize *= 1.02;
    x+=random(19, 20);
    y-=random(19, 20);
    x-=random(19, 20);
    y+=random(19, 20);
  }


  // This method makes Bo Diddley's guitar appear on screen using the
  // coordinates and color numbers stored in the data fields.

  void display() {
    rectMode(CENTER);
    fill(r, g, b, a);
    stroke(r, g, b, a);
    strokeWeight(zSize*0.015);
    rect(x, y-zSize*1.75, zSize*0.25, zSize*1.925);
    noStroke();
    fill(r, g, b, a);
    rect(x, y-zSize*3, zSize*0.35, zSize*0.6);
    fill(r, g, b, a);
    rect(x, y-zSize*3, zSize*0.32, zSize*0.57);

    fill(r, g, b, a);
    rect(x, y, zSize, zSize*1.6);
    fill(r, g, b, a);
    rect(x, y, zSize*0.95, zSize*1.55);

    //sound hole
    fill(100, a);
    ellipse(x, y-zSize*0.1, zSize*0.4, zSize*0.4);
    fill(0, a);
    ellipse(x, y-zSize*0.1, zSize*0.35, zSize*0.35);

    //guitar strings Start here
    stroke(120, a);
    strokeWeight(zSize*0.015);
    line(x-zSize*0.08, y+zSize*0.5, x-zSize*0.10, y-zSize*2.85); 
    line(x-zSize*0.05, y+zSize*0.5, x-zSize*0.07, y-zSize*3);
    line(x-zSize*0.01, y+zSize*0.5, x-zSize*0.022, y-zSize*2.71);
    line(x-zSize*0.022, y-zSize*2.71, x-zSize*0.06, y-zSize*3.2);

    line(x+zSize*0.09, y+zSize*0.5, x+zSize*0.09, y-zSize*2.8); 
    line(x+zSize*0.05, y+zSize*0.5, x+zSize*0.065, y-zSize*3);
    line(x+zSize*0.02, y+zSize*0.5, x+zSize*0.022, y-zSize*2.71);
    line(x+zSize*0.022, y-zSize*2.71, x+zSize*0.06, y-zSize*3.2);

    //guitar strings end here

    //guitar bridge on body below sound hole
    stroke(50, a);
    strokeWeight(zSize*0.06);
    line(x-zSize*0.13, y+zSize*0.3, x+zSize*0.13, y+zSize*0.4);

    stroke(0, a);
    strokeWeight(zSize*0.04);
    line(x-zSize*0.13, y+zSize*0.5, x+zSize*0.13, y+zSize*0.5);

    stroke(140, a);
    strokeWeight(zSize*.078);
    point(x-zSize*0.1, y-zSize*2.85); //Head tuning keys
    point(x-zSize*0.1, y-zSize*3.02);
    point(x-zSize*0.1, y-zSize*3.2);

    point(x+zSize*0.09, y-zSize*2.85); //Head tuning keys
    point(x+zSize*0.09, y-zSize*3.02);
    point(x+zSize*0.09, y-zSize*3.2);

    stroke(0, a);
    strokeWeight(zSize*.06);
    point(x-zSize*0.1, y-zSize*2.85); //Head tuning keys
    point(x-zSize*0.1, y-zSize*3.02);
    point(x-zSize*0.1, y-zSize*3.2);

    point(x+zSize*0.09, y-zSize*2.85); //Head tuning keys
    point(x+zSize*0.09, y-zSize*3.02);
    point(x+zSize*0.09, y-zSize*3.2);


    //volume knob backdrop
    stroke(160, a);
    strokeWeight(zSize*.09);
    point(x+zSize*0.38, y+zSize*0.25);
    point(x+zSize*0.25, y+zSize*0.35);
    point(x+zSize*0.38, y+zSize*0.45);
    point(x+zSize*0.26, y+zSize*0.55);

    point(x-zSize*0.32, y-zSize*0.6);

    //volume knob 
    stroke(50, a);
    strokeWeight(zSize*.07);
    point(x+zSize*0.38, y+zSize*0.25); 
    point(x+zSize*0.25, y+zSize*0.35);
    point(x+zSize*0.38, y+zSize*0.45);
    point(x+zSize*0.26, y+zSize*0.55);

    point(x-zSize*0.32, y-zSize*0.6);

    noStroke();
  }
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    for (int i = 0; i < numGuitars; i++) {  // Construct the array of guitar objects
      guitArray[i] = new Guitar(random(0, width+50), random(0, height+75), random(0, 255), random(0, 255), random(0, 255), random(100, 255), random(5, 200));
    }

    for (int i = 0; i< numGuitars; i++) {  // Calling the display() class method
      guitArray[i].display();
    }
  }
}

void mouseMoved () { 
  for (int i = 0; i< numGuitars; i++) {  // Calling the display() class method
    guitArray[i].display();
    guitArray[i].hyperGrow();
  }
}

void mouseDragged () { 
  for (int i = 0; i< numGuitars; i++) {  // Calling the display() class method
    guitArray[i].display();
    guitArray[i].hyperShrink();
  }
}


void keyPressed () {
  if (key == 's') {
    //background(0);
    for (int i = 0; i < numGuitars; i++) {  // Construct the array of guitar objects
      guitArray[i] = new Guitar(random(0, width+50), random(0, height+75), random(0, 255), random(0, 255), random(0, 255), random(100, 255), random(5, 200));
    }

    for (int i = 0; i< numGuitars; i++) {  // Calling the display() class method
      guitArray[i].display();
    }

    noLoop();
  }
  if (key== 'g') {
    loop();
  }
}

