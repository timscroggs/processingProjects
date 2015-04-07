// Ex08_05

import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;

Minim soundCode;
AudioPlayer birdSong;

void setup(){
  size(400, 250);
  
  // Picture
  PImage bird;
  bird = loadImage("bird.png");
  image(bird, 0, 0, width, height);
  
  // Sound
  soundCode = new Minim(this);
  birdSong = soundCode.loadFile("bird.wav");
  birdSong.play();
}  

void stop() {
  birdSong.close();
  soundCode.stop();
  super.stop();
}
