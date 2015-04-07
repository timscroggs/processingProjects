// Ex08_02

size(600, 200);
PImage spaceInvader;
spaceInvader = loadImage("SpaceInvaderRed.jpg");
image(spaceInvader, 0, 0);
filter(BLUR, 3);

PImage webInvader;
String url = "http://farm3.staticflickr.com/2397/2148858093_0b469eeb97.jpg";
webInvader = loadImage(url);
image(webInvader, 300, 0, 300, 200);
filter(GRAY);
