color[] rainbow = {#FFFFCD, #CC5C54, #F69162, #85A562, #7AB5DB};
color[] palette = rainbow;

Table stateData;
int rowCount;

void setup() {
  size(600, 200);
  stateData = new Table("stateData.tsv");
  rowCount = stateData.getRowCount();
  println("rowCount = " + rowCount);
}

void draw() {
  background(palette[0]);
  smooth();
  fill(palette[1], 160);
  noStroke();

  for (int row = 0; row < rowCount; row++) {
    String state = stateData.getString(row, 0);
    float age = stateData.getFloat(row, 4);
    float degree = stateData.getFloat(row, 3);
    ellipse(age*12, degree*3, 9, 9);
  }
  
  noLoop();
}
