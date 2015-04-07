void setup() {
size(450, 250);
background(0);
float xText = 20;
float yText = 100;
float border = 25;

String story = "\n\n      She threw back her head and laughed!      \n";
println("<"+story+">");
println("<"+trim(story)+">");


PFont MyFont;
MyFont = loadFont("jey-48.vlw");
textFont(MyFont);

String sentence = "Hello, this is my font in a program.";
float textWid = textWidth(sentence);

fill(125);
rect(xText-border, yText-70, textWid+2*border, 120);
fill(255);

text(sentence, xText, yText);
noLoop();

}


