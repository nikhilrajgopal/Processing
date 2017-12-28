import ddf.minim.*;
Minim minim;
AudioSample sound;
PImage backgroundImage;  

  

int x=400;
int y=400;
int xspeed = 5;
int yspeed = 6;
void setup(){
size(1000,1000);
minim = new Minim (this);  
sound = minim.loadSample("pong.wav", 128);
backgroundImage = loadImage("pong.jpeg");
}
  void draw(){
    fill(#FFFFFF);
    stroke(#FFFFFF);
image(backgroundImage, 1000, 1000);
background(0,0,0);
ellipse(x,y,50,50);
rect(975,mouseY,50,200);


x = x + xspeed;
y=y+yspeed;
if(x < 25 ){
  xspeed = -xspeed;
  sound.trigger();
}
if(y < 25 || y > 975) {
  yspeed = -yspeed;
      sound.trigger();
      
      
}
}