void setup() {
  size(400, 400);
  tree(150,150);
}

void tree (float treeX, float treeY) {
  noStroke();
  fill(#0D900E);
  ellipse(treeX, treeY, 50, 50);
  ellipse(treeX - 15, treeY - 10, 45,30);
  ellipse(treeX + 15, treeY - 10, 55,40);
  ellipse(treeX + 20, treeY + 20, 55,60);
  ellipse(treeX - 15, treeY + 20, 75,60);
  ellipse(treeX - 10, treeY + 20, 50,80);
}
