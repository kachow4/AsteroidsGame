class Bullet extends Floater{
  public Bullet(SpaceShip theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRadians) + theShip.myDirectionY;
    myDirectionY = 5*Math.sin(dRadians) + theShip.myDirectionY;
  }

  public void show(){
    fill(255, 239, 109);
    stroke(252, 228, 46);
    strokeWeight(2);
    rect((float)myCenterX, (float)myCenterY, 10, 10, 2);
    //point((float)myCenterX, (float)myCenterY);
  }
  
  /*public void move (){   //move the floater in the current direction of travel      
    myCenterX += myDirectionX;     //change the x and y coordinates by myDirectionX and myDirectionY 
    myCenterY += myDirectionY;     
    if(myCenterX >width){ //wrap around screen       
      jen.remove(this);    
    }    
    else if (myCenterX<0){     
      jen.remove(this);     
    }    
    if(myCenterY >height){    
      jen.remove(this);  
    }   
    else if (myCenterY < 0){     
      jen.remove(this);   
    }   
  }*/   

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
}