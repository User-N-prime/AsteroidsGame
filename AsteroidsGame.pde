Spaceship bob;
ArrayList<Asteroid> mark = new ArrayList<Asteroid>();
ArrayList<Bullet> bub = new ArrayList<Bullet>();
boolean accel = false;
boolean decel = false;
boolean left = false;
boolean right = false;
Star[] sue = new Star[200];


public void setup() {
  size(1000, 1000);
  bob = new Spaceship();
  for (int i = 0; i < sue.length; i++)
    sue[i] = new Star();
  for (int i = 0; i < 20; i++)
    mark.add(new Asteroid());
}

public void draw() {
  background(0);
 
  for (int i = 0; i < sue.length; i++)
    sue[i].show();

  for (int i = 0; i < mark.size(); i++) {
    mark.get(i).show();
    mark.get(i).move();
  }
  for (int i = 0; i < mark.size(); i++) {
    if (dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)mark.get(i).getCenterX(), (float)mark.get(i).getCenterY()) < 25) {
      mark.remove(i);
    }
  }
  
  if (mark.size() != 20)
    mark.add(new Asteroid());
 
  if (accel)
    bob.accelerate(0.2);
  else if (decel)
    bob.accelerate(-0.2);
  else {  
    bob.setXspeed(bob.getXspeed() / 1.05);
    if (abs((float)bob.getXspeed()) <= 0.1)
      bob.setXspeed(0);
    bob.setYspeed(bob.getYspeed() / 1.05);
    if (abs((float)bob.getYspeed()) <= 0.1)
      bob.setYspeed(0);
  }
  
   if (left)
     bob.turn(5);
   if (right)
     bob.turn(-5);
  
 
  for (int i = bub.size() - 1; i >= 0; i--) {
    bub.get(i).show();
    bub.get(i).move();
    // bullets fade, then removed
    if (bub.get(i).getColor() < 30) {
      bub.remove(i);
      break;
    }
    for (int j = mark.size() - 1; j >= 0; j--) {
      if (dist((float)bub.get(i).getCenterX(), (float)bub.get(i).getCenterY(), (float)mark.get(j).getCenterX(), (float)mark.get(j).getCenterY()) < 25) {
        bub.remove(i);
        mark.remove(j);
        break;
      }
    }
  }
  
  bob.show();
  bob.move();
}

public void keyPressed() {
  if (key == 'w')
    accel = true;
  if (key == 'a')
    left = true;
  if (key == 's')
    decel = true;
  if (key == 'd')
    right = true;
  if (key == 'p')
    bob.hyperSpeed();
  if (key == ' ')
    bub.add(new Bullet(bob));
}

public void keyReleased() {
  if (key == 'w')
    accel = false;
  if (key == 'a')
    left = false;
  if (key == 's')
    decel = false;
  if (key == 'd')
    right = false;
}
