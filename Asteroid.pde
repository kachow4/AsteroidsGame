class Asteroid extends Floater{
  private int spin;
  Asteroid(){
    corners = 17;
    xCorners = new int [corners];
    yCorners = new int [corners];
    myColor = color(204, 165, 87);
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*600);
    myDirectionX = (int)((Math.random()*4)-2);
    myDirectionY = (int)((Math.random()*4)-2);
    myPointDirection = (int)(Math.random()*360);
    xCorners[0] = 0;
    yCorners[0] = 18;
    xCorners[1] = 5;
    yCorners[1] = 17;
    xCorners[2] = 9;
    yCorners[2] = 16;
    xCorners[3] = 13;
    yCorners[3] = 14;
    xCorners[4] = 16;
    yCorners[4] = 12;
    xCorners[5] = 17; 
    yCorners[5] = 8;
    xCorners[6] = 16;
    yCorners[6] = 4;
    xCorners[7] = 14;
    yCorners[7] = 2; 
    xCorners[8] = 14; 
    yCorners[8] = -19;
    xCorners[9] = -14;
    yCorners[9] = -19; 
    xCorners[10] = -14;
    yCorners[10] = 2;
    xCorners[11] = -16;
    yCorners[11] = 4;
    xCorners[12] = -17;
    yCorners[12] = 8;
    xCorners[13] = -16;
    yCorners[13] = 12;
    xCorners[14] = -13;
    yCorners[14] = 14;
    xCorners[15] = -9; 
    yCorners[15] = 16;
    xCorners[16] = -5;
    yCorners[16] = 17;
    spin = (int)((Math.random()*10));
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
  public void move(){
    rotate(spin);
    super.move();
  }
}