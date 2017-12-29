import ddf.minim.*;
Minim minim;
AudioSample sound;
PImage backgroundImage;  

  
int score=0;
int x=400;
int y=400;
int xspeed = 5;
int yspeed = 6;
void setup(){
size(1000,975);
minim = new Minim (this);  
sound = minim.loadSample("pong.wav", 128);
backgroundImage = loadImage("pong.jpeg");
}
  void draw(){
    
    fill(#FFFFFF);
    stroke(#FFFFFF);
image(backgroundImage, 1000, 1000);
background(0);
text(str(score), 60,60,50,50);
print(score);
ellipse(x,y,50,50);
rect(mouseX,950,200,100);


x = x + xspeed;
y=y+yspeed;
if(x < 25 || x > 975){
  xspeed = -xspeed;
  sound.trigger();
}
if(y < 25 ){
  yspeed = -yspeed;
      sound.trigger();}
    if(intersects(x,y,mouseX,925,200)){
 yspeed = -yspeed;
      sound.trigger();
     score++;}   
 
  
      

if (y >= 951){
x= 400;
y= 400;
score = 0;}}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}


  
  

  