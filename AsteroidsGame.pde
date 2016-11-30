//bob is the spaceship
//sue is the stars
//jen is the asteroids
//lily is the bullets

SpaceShip bob = new SpaceShip();
Star[] sue = new Star[500];
ArrayList <Asteroid> jen;
ArrayList <Bullet> lily;

public void setup(){
  size(800, 600);

  for(int i = 0; i < sue.length; i++){
    sue[i] = new Star();
  }

  jen = new ArrayList <Asteroid>();
  for(int j = 0; j < 15; j++){
    jen.add(j, new Asteroid());
  }

  lily = new ArrayList <Bullet>();         
}

public void draw(){
  background(0);
  //stars
  for(int i = 0; i < sue.length; i++){
    sue[i].show();
  }
  //asteroids movement & spaceship collision
  for(int j = 0; j < jen.size(); j++){
    jen.get(j).move();
    jen.get(j).show();
    if(dist(bob.getX(), bob.getY(), jen.get(j).getX(), jen.get(j).getY()) < 30)
      jen.remove(j);  
  }

  //bullet movement
  for(int s = 0; s < lily.size(); s++){
    lily.get(s).move();
    lily.get(s).show();
  }

  //spaceship movement
  bob.show();
  bob.move();
 
  //asteroid and bullet collision 
  for(int j = 0; j < jen.size(); j++){
    for(int s = 0; s < lily.size(); s++){
      if(dist(jen.get(j).getX(), jen.get(j).getY(), lily.get(s).getX(), lily.get(s).getY()) < 30){
        lily.remove(s);
        jen.remove(j);
        break;
      }
    }
  }
}







