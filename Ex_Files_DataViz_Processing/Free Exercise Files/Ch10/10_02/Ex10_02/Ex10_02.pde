// Ex10_02

color[] crowds = {#678C8B, #8FA89B, #A2BAB0, #D0EDDE, #B3B597};
color[] palette = crowds;

void setup(){
size(600, 200);
//println(presidents);
PFont font;
font = loadFont("Aharoni-Bold-48.vlw");
textFont(font);
}

void draw(){
background(palette[0]);
fill(palette[2]);
String[] presidents = loadStrings("presidents.txt");
text(presidents[40], mouseX, mouseY);
}
