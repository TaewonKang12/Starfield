class star {
  private double X, Y, clr;//start, color
  private double dirctX, dirctY;//direction for movement
  private int sco;
  public star() {
    X = width/2;
    Y = height/2;
    clr = 255;
    dirctX = Math.random()*10-5;
    dirctY = Math.random()*10-5;
  }
  public void show() {
    fill((int)(clr));
    ellipse((float)X-5, (float)Y-5, 10, 10);//makes the circle
    if (mouseX>X-5 && mouseX<X+5 && mouseY>Y-5 && mouseY<Y+5) {
      textSize(200);
      text("You Lose", 75, 500);
      textSize(100);
      text("Reload the page", 100, 700);
      noLoop();
    }
  }
  public void move() {
    X=X+dirctX;
    Y=Y+dirctY;
    if (X>width+50||X<-50) {
      X=width/2;
      Y=height/2;
      dirctX = Math.random()*10-5;
      dirctY = Math.random()*10-5;
    }
    if (Y>height+50||Y<-50) {
      X=width/2;
      Y=height/2;
      dirctX = Math.random()*10-5;
      dirctY = Math.random()*10-5;
    }
    if (dirctX>-1&&dirctX<1 && dirctY>-1&&dirctY<1) {
      dirctX = Math.random()*10-5;
      dirctY = Math.random()*10-5;
    }
  }
   public void setX(float Xig){
    X=  Xig;
  }
   public void setY(float Sig){
    Y=  Sig;
  }
  public void setclr(int C){
    clr=  C;
  }
  public void setdirctX(float Ex){
    dirctX=  Ex;
  }
  public void setdirctY(float Wy){
    dirctY = Wy;
  }
   public void setsco(int S){
    sco=  S;
  }
  public double getx() {
    return X;
  }
  public double gety() {
    return Y;
  }
  public double getclr() {
    return clr;
  }
  public double getdirctX() {
    return dirctX;
  }
  public double getdirctY() {
    return dirctY;
  }
  public int getsco() {//get
    return sco;
  }
}
