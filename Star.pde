class Star{
  private int myX, myY, x;
  public Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*600);
    x = (int)((Math.random()*2));
  }
  public void show(){
    strokeWeight((int)(Math.random()*2));
    stroke(255);
    point(myX, myY);
  }
}


