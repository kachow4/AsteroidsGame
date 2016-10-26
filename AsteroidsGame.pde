SpaceShip bob = new SpaceShip();
Star[] sue = new Star[500];
public void setup() 
{
  size(1200, 900);
  for(int i = 0; i < sue.length; i++){
    sue[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < sue.length; i++){
  sue[i].show();
  }
  bob.move();
  bob.show();
}

class SpaceShip extends Floater{   
  SpaceShip(){      //constructor
    corners = 5;
    xCorners = new int [corners];
    yCorners = new int [corners];
    myColor = color(0, 0, 255);
    myCenterX = 600;
    myCenterY = 450;
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
  public double getX() {return myCenterX;}   
  public void setY(int y) {myCenterY = y;}   
  public double getY() {return myCenterY;}   
  public void setDirectionX(double x) {myDirectionX = x;}   
  public double getDirectionX() {return myDirectionX;}   
  public void setDirectionY(double y) {myDirectionY = y;}   
  public double getDirectionY() {return myDirectionY;}   
  public void setPointDirection(int degrees) {myPointDirection = degrees;}   
  public double getPointDirection() {return myPointDirection;}
}


abstract class Floater{ //Do NOT modify the Floater class! Make changes in the SpaceShip class   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public double getX();   
  abstract public void setY(int y);
  abstract public double getY(); 
  abstract public void setDirectionX(double x);  
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();  
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection();  

     
  public void accelerate (double dAmount){  //Accelerates the floater in the direction it is pointing (myPointDirection)        
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   

  public void rotate (int nDegreesOfRotation){     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   

  public void move (){   //move the floater in the current direction of travel      
    myCenterX += myDirectionX;     //change the x and y coordinates by myDirectionX and myDirectionY 
    myCenterY += myDirectionY;     
    if(myCenterX >width){ //wrap around screen       
      myCenterX = 0;    
    }    
    else if (myCenterX<0){     
      myCenterX = width;    
    }    
    if(myCenterY >height){    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0){     
      myCenterY = height;    
    }   
  }   

  public void show(){ //Draws the floater at the current position               
    fill(myColor);   
    stroke(myColor);    
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

class Star{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*1200);
    myY = (int)(Math.random()*900);
  }
  public void show(){
    strokeWeight((int)(Math.random()*2));
    stroke(255);
    point(myX, myY);
  }
}

void keyPressed(){
  if (key == 'j'){
    bob.rotate(10);
  }
  if (key == 'l'){
    bob.rotate(-10);
  }
  if (key == ' '){
    bob.accelerate(1);
  }
  if (key == 'k'){
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setX((int)(Math.random()*1000));
    bob.setY((int)(Math.random()*600));
    bob.setPointDirection((int)(Math.random()*360)); 
  }
}

