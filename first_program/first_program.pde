void setup(){
size(1000,1000);
ellipse(500,800,300,300);
ellipse(500,525,250,250);
ellipse(500,300,200,200);
fill(#000305);
ellipse(450,275,20,20);
ellipse(550,275,20,20);
fill(#FF7003);
triangle(475,290,525,290,500,330);
fill(#080000);
ellipse(455,350,20,20);
ellipse(545,350,20,20);
ellipse(475,365,20,20);
ellipse(525,365,20,20);
ellipse(500,370,20,20);
ellipse(500,460,20,20);
ellipse(500,530,20,20);
ellipse(500,600,20,20);
fill(#71511F);

}
void draw(){
if(mousePressed){
  println(mouseX);
println(mouseY);}
}