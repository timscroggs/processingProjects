int x=225;
int y=225;

int boNum = 100;

int [] xCoords = new int[boNum];
int [] yCoords = new int[boNum];

void setup() {
  size(550, 550);
  //boBack(25, 25);
  
  for (int i = 0; i < xCoords.length; i++) {
    for (int u = 0; u < yCoords.length; u++) {
      xCoords[i] = i * 21;  
        yCoords[i] = i * 5;
    }
  }
}

void draw() {
  //for (int i = 0; i < xCoords.length; i++) {
    //boBack(xCoords[i], yCoords[i]);
  //}
  
  boBack(width/2, height/2);
}

  void boBack(float x, float y) {
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

