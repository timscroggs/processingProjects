/**
A simulation of handdrawn lines by <a href="http://www.local-guru.net/blog/>Guru</a>
*/

int seed = int(random(1024));

void setup() {
  size(300,300);
  smooth();
}

void draw() {
  randomSeed(seed);
  background(255);
  strokeWeight(2);
  stroke(0);
  ftline( 150, 150, 200,200);
  ftline( 180,200,200,200);
  ftline( 200,180, 200, 200);

  ftline( 150,90, 180,65);
  ftline( 180,75, 180,65);
  ftline( 170,65, 180,65);

  ftrect(70,90,70,50);
  ftrect(210,180,60,90);
  ftrect(190,40,80,50);
  
}

void ftline( float x1, float y1, float x2, float y2 ) {
  beginShape();
  vertex( x1 + random(-2,2), y1 +random(-2,2));
  curveVertex( x1 + random(-2,2), y1 +random(-2,2));
  curveVertex( x1+(x2 -x1)/3 + random(-2,2), y1 + (y2-y1)/3 +random(-2,2));
  curveVertex( x1+2*(x2-x1)/3 + random(-2,2), y1+ 2*(y2-y1)/3 +random(-2,2)); 
  curveVertex( x2 + random(-2,2), y2 +random(-2,2));
  vertex( x2 + random(-2,2), y2 +random(-2,2));
  endShape();  

  beginShape();
  vertex( x1 + random(-1,1), y1 +random(-1,1));
  curveVertex( x1 + random(-1,1), y1 +random(-1,1));
  curveVertex( x1+(x2 -x1)/3 + random(-1,1), y1 + (y2-y1)/3 +random(-1,1));
  curveVertex( x1+2*(x2-x1)/3 + random(-1,1), y1+ 2*(y2-y1)/3 +random(-1,1)); 
  curveVertex( x2 + random(-1,1), y2 +random(-1,1));
  vertex( x2 + random(-1,1), y2 +random(-1,1));
  endShape();  
}

void ftrect( float x1, float y1, float w, float h ) { 
 
  ftline( x1, y1, x1, y1 + h );
  ftline( x1, y1, x1 + w, y1 );
  ftline( x1+w, y1, x1+w, y1+h ); 
  ftline( x1, y1+h, x1+w, y1+h );
  
}

void keyPressed() {
   seed = int(random(1024));
}
