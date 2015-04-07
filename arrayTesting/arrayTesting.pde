
int roadLines = 35;
int i;
float [] xCoords = new float[35];
float [] yCoords = new float[35];
float[] y = new float[roadLines]; // y coordinates of the lines
float[] speed = new float[roadLines]; // movement speeds of lines
float offset = 25; // space between lines

void setup() {
  size(500, 750);
  smooth();
  strokeWeight(6);
  stroke(255);
  strokeCap(SQUARE);
  for (i = 0; i < xCoords.length; i++) {
    xCoords[i] = width/2-42;
    yCoords[i] = random(0,255);
  }
  
  for (i = 0; i < roadLines; i++) {
    y[i] = 0; // Set initial position
    speed[i] = 1; // Set initial speed
  }
}
void draw() {
  background(90);

  // One iteration for each of the 12 lines
  for (int i = 0; i < y.length; i++) {
    y[i] += speed[i]; // Update line position
    if (y[i] > (height )) { // If off the right,
    y[i] = -offset * 2; // return to the left
    }
    float x = width/2-42; // Set x-coordinate for line
    line(x, y[i], x, y[i] + offset);
  }
}

/*
 int i;
    for (i=-1; i< height; i+=25) {
      fill(255);
      rect(width/2-42, i, 5, 15);
      
    }

    for (i=-1; i< height; i+=25) {
      fill(255);
      rect(width/2+42, i, 5, 15);
    }
  }*/
