void setup() {
  size(displayWidth, displayHeight);
  background(255, 90, 5);
  noStroke();
  fill(250, 200, 90, 100);
  
  int numCircles = 30;
  for (int count=0; count<numCircles; count++) {
    float redVal = random(0, 256);
    float bluVal = random(0, 256);
    float grnVal = random(0, 256);
    float clear = random (0, 256);
    fill(redVal, bluVal, grnVal, clear);
    
    float radius = random(40, 100);
    float xCenter = random(radius, width-radius);
    float yCenter = random(radius, height-radius);
    
    ellipse(xCenter, yCenter, radius*2, radius*2);
  }
}
