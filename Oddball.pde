class odd extends star {
  public odd() {
    setX(width/2);
    setY(height/2);
    setclr(color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)));
    setdirctX((float)(Math.random()*10-5));
    setdirctY((float)(Math.random()*10-5));
    setsco(0);
  }
  public void show() {
    fill((int)(getclr()));
    ellipse((float)(getx()-5), (float)(gety()-5), 30, 30);//makes the circle
    stroke(255);
    text(getsco(), 20, 20);
    setX((float)(getx()+getdirctX()));
    setY((float)(gety()+getdirctY()));
    if (mouseX>getx()-15 && mouseX<getx()+15 && mouseY>gety()-15 && mouseY<gety()+15) {
      setsco(getsco()+1);
      setX(width/2);
      setY(height/2);
      setdirctX((float)Math.random()*10-5);
      setdirctY((float)Math.random()*10-5);
      setclr(color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)));
    }
  }
  public void move() {
    setX((float)(getx()));
    setY((float)(gety()));
    if (getx()>width+50||getx()<-50) {
      setX(width/2);
      setY(height/2);
      setdirctX((float)Math.random()*10-5);
      setdirctY((float)Math.random()*10-5);
      setclr(color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)));
    }
    if (gety()>height+50||gety()<-50) {
      setX(width/2);
      setY(height/2);
      setdirctX((float)Math.random()*10-5);
      setdirctY((float)Math.random()*10-5);
      setclr(color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)));
    }
    if (getx()>mouseX) {//avoid mouse
      setX((float)(getx()+1));
    }
    if (gety()>mouseY) {//avoid mouse
      setY((float)(gety()+1));
    }
    if (getx()<mouseX) {//avoid mouse
      setX((float)(getx()-1));
    }
    if (gety()<mouseY) {//avoid mouse
      setY((float)(gety()-1));
    }
    if (getx()>-1&&getdirctX()<1 && getdirctY()>-1&&getdirctY()<1) {
      setdirctX((float)Math.random()*10-5);
      setdirctY((float)Math.random()*10-5);
      setclr(color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)));
    }
  }
}
