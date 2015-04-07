// sketch_131019j

size(600,200);
smooth();
background(#9f9694);
noFill();

// The first curve
// The Control points
stroke(#f1e6d4);
strokeWeight(2);
line(100,50,250,50);
line(100,150,250,150);

// The Curve Itself
stroke(#791f33);
strokeWeight(3);
bezier(100,50,250,50,100,150,250,150);

// The second curve
// The Control points
stroke(#f1e6d4);
strokeWeight(2);
line(350,75,500,25);
line(350,125,500,175);

// The Curve Itself
stroke(#ba3d49);
strokeWeight(3);
bezier(350,75,500,25,500,175,350,125);

