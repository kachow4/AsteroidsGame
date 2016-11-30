class Asteroid extends Floater{
  private int spin;
  private int size = (int)((Math.random()*2)+1);
  Asteroid(){
    corners = 17;
    xCorners = new int [corners];
    yCorners = new int [corners];
    myColor = color(204, 165, 87);
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*600);
    myDirectionX = (int)((Math.random()*5)-2);
    myDirectionY = (int)((Math.random()*5)-2);
    myPointDirection = (int)(Math.random()*360);
    xCorners[0] = 0;
    yCorners[0] = 18*size;
    xCorners[1] = 5*size;
    yCorners[1] = 17*size;
    xCorners[2] = 9*size;
    yCorners[2] = 16*size;
    xCorners[3] = 13*size;
    yCorners[3] = 14*size;
    xCorners[4] = 16*size;
    yCorners[4] = 12*size;
    xCorners[5] = 17*size; 
    yCorners[5] = 8*size;
    xCorners[6] = 16*size;
    yCorners[6] = 4*size;
    xCorners[7] = 14*size;
    yCorners[7] = 2*size; 
    xCorners[8] = 14*size; 
    yCorners[8] = -19*size;
    xCorners[9] = -14*size;
    yCorners[9] = -19*size; 
    xCorners[10] = -14*size;
    yCorners[10] = 2*size;
    xCorners[11] = -16*size;
    yCorners[11] = 4*size;
    xCorners[12] = -17*size;
    yCorners[12] = 8*size;
    xCorners[13] = -16*size;
    yCorners[13] = 12*size;
    xCorners[14] = -13*size;
    yCorners[14] = 14*size;
    xCorners[15] = -9*size; 
    yCorners[15] = 16*size;
    xCorners[16] = -5*size;
    yCorners[16] = 17*size;
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

  public void show(){
    fill(myColor);  
    strokeWeight(4); 
    stroke(96, 70, 23);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }   
}