//bob is the spaceship
//sue is the stars
//jen is the asteroids

SpaceShip bob = new SpaceShip();
Star[] sue = new Star[500];
ArrayList <Asteroid> jen;
ArrayList <Bullet> lily;
//Bullet mat = new Bullet(bob);
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

  lily = new ArrayList <Bullet>();         
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
  //mat.show();
  //mat.move();
  for(int s = 0; s < lily.size(); s++){
    lily.get(s).move();
    lily.get(s).show();
  }
  bob.show();
  bob.move();
  for(int s = 0; lily.size(); s++){
    for(int j = 0; jen.size(); j++){
      if(dist(jen.getX(j), jen.getY(j), lily.getX(s), lily.getY(s)) < 10)
        lily.remove(s);
        jen.remove(j);
    }
  }
}







