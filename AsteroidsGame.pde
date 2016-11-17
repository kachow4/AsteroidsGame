//bob is the spaceship
//sue is the stars
//jen is the asteroids

SpaceShip bob = new SpaceShip();
Star[] sue = new Star[500];
ArrayList <Asteroid> jen;
boolean kIsPressed = false;
boolean lIsPressed = false;
Bullet mat = new Bullet(bob);
ArrayList <Bullet> lily;
//Asteroid[] jen = new Asteroid[10]
//Asteroid kat = new Asteroid();
//jen.add(kat);

public void setup(){
  size(800, 600);
  for(int i = 0; i < sue.length; i++){
    sue[i] = new Star();
  }
  jen = new ArrayList <Asteroid>();
  for(int j = 0; j < 11; j++){
    jen.add(j, new Asteroid());
  }
  /*for(int i = 0; i < jen.length; i++){
    jen[i] = new Asteroid();
  }
  Asteroid kat = new Asteroid();
  jen.add(kat);*/
}

public void draw(){
  background(0);
  for(int i = 0; i < sue.length; i++){
    sue[i].show();
  }
  for(int j = 0; j < jen.size(); j++){
    jen.get(j).move();
    jen.get(j).show();
    if(dist(bob.getX(), bob.getY(), jen.get(j).getX(), jen.get(j).getY()) < 30)
      jen.remove(j);  
  /*for(int i = 0; i < jen.length; i++){
    jen[i].move();
    jen[i].show();
  }
  kat.move();
  kat.show();*/
  }
  mat.show();
  mat.move();
  bob.show();
  bob.move();
}

void keyPressed() {
  if (keyCode == RIGHT){
    bob.rotate(10);
  }
  if (keyCode == LEFT){
    bob.rotate(-10);
  }
  if (keyCode == UP){
    bob.accelerate(.2);
  }
  if (keyCode == DOWN){
    bob.accelerate(-.2);
  }
  if (key == 'k'){
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setX((int)(Math.random()*800));
    bob.setY((int)(Math.random()*600));
    bob.setPointDirection((int)(Math.random()*360)); 
  }
  if(key=='k'){
    kIsPressed = true;
  }
  else if (key == 'l'){
    lIsPressed = true;
  }
  /*for(int s = 0; s < 10; s++){
    if (key == ' '){
    lily.add(s, new Bullet(bob));
    }*/
}

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
    stroke(255);
    strokeWeight(5);
    point((float)myCenterX, (float)myCenterY);
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
  abstract public int getX();   
  abstract public void setY(int y);
  abstract public int getY(); 
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




