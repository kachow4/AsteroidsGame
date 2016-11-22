class Star{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*600);
  }
  public void show(){
    strokeWeight((int)(Math.random()*2));
    stroke(255);
    point(myX, myY);
  }
}

void keyReleased()
{
  if(key=='k'){
    kIsPressed = false;
  }
  else if (key == 'l'){
    lIsPressed = false;
  }
}
