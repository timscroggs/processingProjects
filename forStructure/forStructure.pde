size (1200,1200);
background(0);
stroke(255);
for (int i = 20; i < 1200; i += 10) {
  line(20, i, i, height); //reverse the x and y to get the original straight grid back
}

for (int x = -16; x < 1200; x += 10) {
  line(x,0,x+15,50);
}

strokeWeight(4);
for (int x = -8; x < 1200; x += 10) {
  line (x, 50, x+15, 100);
}
strokeWeight(1);

for (int x = -16; x < 1200; x += 10) {
  line(x,100,x+15,150);
}

strokeWeight(4);
for (int x = -8; x < 1200; x += 10) {
  line (x, 150, x+15, 200);
}
strokeWeight(1);

noFill();

for ( int d = 1200; d > 0; d -= 10) {
  ellipse(width/2,height/2,d,d);
}
