// Ex03_06

size(600, 200);
smooth();
background(#FFFFCD);
strokeWeight(5);

rectMode(CORNER); // default
rect(60, 60, 80, 80);

rectMode(CENTER);
noStroke();
fill(#CC5C54);
rect(300, 100, 80, 80);

rectMode(CORNERS);
stroke(#F69162);
noFill();
rect(460, 60, 540, 140);
