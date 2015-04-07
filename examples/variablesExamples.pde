// Susan Reiser

// EXAMPLE 1:
// 1 colorful rectangle centered in the canvas
size(300,300);
background(20,20,255);
fill(20,255,20);
stroke(255,20,20);
strokeWeight(4);
rectMode(CENTER);
rect(width/2,height/2,50,50);

/*
// EXAMPLE 2:
// 5 small rectangles across the top of 
// the canvas 
size(300,300);
int xIncrement=width/7;
rect(xIncrement, 10, 20, 20);  
rect(xIncrement*2, 10, 20, 20);
rect(xIncrement*3, 10, 20, 20);
rect(xIncrement*4, 10, 20, 20);
rect(xIncrement*5, 10, 20, 20);
*/

/*
// EXAMPLE 3:
// 5 rectangles arranged in the canvas
size(300,300);
colorMode(HSB, 360, 100, 100);
background(20,20,100);
fill(20,20,80);
stroke(20,20,20);
rectMode(CENTER);
rect(50,50,50,50); 
fill(20,20,80);
rect((width/2-50)/2 +50,(width/2-50)/2 +50,50,50);
fill(20,20,60);
rect(width/2,height/2,50,50);
fill(20,20,40);
rect(width/2+(width/2-50)/2,height/2+(width/2-50)/2,50,50);
fill(20,20,20);
rect(width-50,height-50,50,50);
*/

/*
// EXAMPLE 4:
// 5 rectangles arranged in the canvas, using a variable.
// Looks the same as Example 3 above.
size(300,300);
colorMode(HSB, 360, 100, 100);
int angle = 20;
background(angle, 20,100);
fill(angle, 20, 80);
stroke(angle, 20, 20);
rectMode(CENTER);
rect(50,50,50,50); 
fill(angle, 20, 80);
rect((width/2-50)/2 +50,(width/2-50)/2 +50,50,50);
fill(angle,20,60);
rect(width/2,height/2,50,50);
fill(angle,20,40);
rect(width/2+(width/2-50)/2,height/2+(width/2-50)/2,50,50);
fill(angle,20,20);
rect(width-50,height-50,50,50);
*/

/*
// EXAMPLE 5:
// A program that changes the colors as display width changes
size(800,400);
int xPos = 0;
fill(xPos*17%255, xPos*11%255, xPos*4%255);
// note we are in rectMode(CORNER) by default
rect(xPos, 0, width/3, height);
xPos+=width/3;
fill(xPos*17%255, xPos*11%255, xPos*4%255);
rect(xPos, 0, width/3, height);
xPos+=width/3;
fill(xPos*17%255, xPos*11%255, xPos*4%255);
rect(xPos, 0, width/3, height);
*/
