class SpaceShip extends Floater{   
  SpaceShip(){      //constructor
    corners = 5;
    xCorners = new int [corners];
    yCorners = new int [corners];
    myColor = color(0, 0, 255);
    myCenterX = 400;
    myCenterY = 300;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    xCorners[0] = -15;
    yCorners[0] = 5;
    xCorners[1] = -5;
    yCorners[1] = 12;
    xCorners[2] = 20;
    yCorners[2] = 0;
    xCorners[3] = -5;
    yCorners[3] = -12;
    xCorners[4] = -15;
    yCorners[4] = -5;
  }
  public void setX(int x) {myCenterX = x;}  //functions
  public int getX() {return (int)myCenterX;}   
  public void setY(int y) {myCenterY = y;}   
  public int getY() {return (int)myCenterY;}   
  public void setDirectionX(double x) {myDirectionX = x;}   
  public double getDirectionX() {return myDirectionX;}   
  public void setDirectionY(double y) {myDirectionY = y;}   
  public double getDirectionY() {return myDirectionY;}   
  public void setPointDirection(int degrees) {myPointDirection = degrees;}   
  public double getPointDirection() {return myPointDirection;}
}
