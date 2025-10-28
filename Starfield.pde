class star{
double X,Y, clr;//start, color
double dirctX,dirctY;//direction for movement
int sco;
star(){
X = width/2;
Y = height/2;
clr = 255;
dirctX = Math.random()*10-5;
dirctY = Math.random()*10-5;
}
void show(){
  fill((int)(clr));
ellipse((float)X-5,(float)Y-5,10,10);//makes the circle
if (mouseX>X-5 && mouseX<X+5 && mouseY>Y-5 && mouseY<Y+5) {
      textSize(200);
      text("You Lose", 75, 500);
      textSize(100);
      text("Reload the page", 100, 700);
      noLoop();
    }
}
void move(){
X=X+dirctX;
Y=Y+dirctY;
if(X>width+50||X<-50){
X=width/2;
Y=height/2;
dirctX = Math.random()*10-5;
dirctY = Math.random()*10-5;
}
if(Y>height+50||Y<-50){
X=width/2;
Y=height/2;
dirctX = Math.random()*10-5;
dirctY = Math.random()*10-5;
}
if(dirctX>-1&&dirctX<1 && dirctY>-1&&dirctY<1){
dirctX = Math.random()*10-5;
dirctY = Math.random()*10-5;
}
}
}
class odd extends star{
odd(){
X = width/2;
Y = height/2;
clr = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
dirctX = (Math.random()*10-5)*50;
dirctY = (Math.random()*10-5)*50;
sco=0;
}
void show(){
  fill((int)(clr));
ellipse((float)X-5,(float)Y-5,30,30);//makes the circle
stroke(255);
text(sco, 20, 20);
if (mouseX>X-15 && mouseX<X+15 && mouseY>Y-15 && mouseY<Y+15) {
  sco++;
  X=width/2;
Y=height/2;
dirctX = Math.random()*10-5;
dirctY = Math.random()*10-5;
clr = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    }
}
void move(){
X=X+dirctX;
Y=Y+dirctY;
if(X>width+50||X<-50){
X=width/2;
Y=height/2;
dirctX = Math.random()*10-5;
dirctY = Math.random()*10-5;
clr = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}
if(Y>height+50||Y<-50){
X=width/2;
Y=height/2;
dirctX = Math.random()*10-5;
dirctY = Math.random()*10-5;
clr = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}
 if (X>mouseX) {//avoid mouse
      X++;
    }
    if (Y>mouseY) {//avoid mouse
      Y++;
    }
    if (X<mouseX) {//avoid mouse
      X--;
    }
    if (Y<mouseY) {//avoid mouse
      Y--;
    }
if(dirctX>-1&&dirctX<1 && dirctY>-1&&dirctY<1){
dirctX = Math.random()*10-5;
dirctY = Math.random()*10-5;
clr = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}
}
}
star [] s = new star[50];
odd point = new odd();
void setup(){
  size(1000,1000);
for(int i = 0; i < s.length; i++){
s[i]= new star();
s[0]= new odd();
}
}
void draw(){
  background(0);
  for(int i = 0; i < s.length; i++){
s[i].show();
s[i].move();
  }
  
