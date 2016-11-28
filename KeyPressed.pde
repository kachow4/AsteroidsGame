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
  if (key == ' '){
    lily.add(s, new Bullet(bob));
  }
}

