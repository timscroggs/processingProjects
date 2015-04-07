// Ex05_04

color[] rainbow = {#FFFFCD, #CC5C54, #F69162, #85A562, #7AB5DB};

size(600, 200);
background(rainbow[0]);
smooth();
//noSmooth();

strokeWeight(20);
stroke(rainbow[1]);

//strokeCap(ROUND);
//line(50, height*.25, 550, height*.25);
//
//strokeCap(SQUARE);
//line(50, height/2, 550, height/2);
//
//strokeCap(PROJECT);
//line(50, height*.75, 550, height*.75);

noFill();
//strokeJoin(MITER);
//strokeJoin(BEVEL);
strokeJoin(ROUND);
rect(100, 50, 100, 100);
