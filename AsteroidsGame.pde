Spaceship bob;
ArrayList<Asteroid> mark = new ArrayList<Asteroid>();
boolean accel = false;
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
  bob.show();
  bob.move();
  for (int i = 0; i < mark.size(); i++) {
    mark.get(i).show();
    mark.get(i).move();
  }
  for (int i = 0; i < mark.size(); i++) {
    if (dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)mark.get(i).getCenterX(), (float)mark.get(i).getCenterY()) < 25) {
      mark.remove(i);
    }
  }
  
  if (accel)
    bob.accelerate(0.1);
  if (!accel) {
    bob.setXspeed(bob.getXspeed() / 1.05);
    if (abs((float)bob.getXspeed()) <= 0.1)
      bob.setXspeed(0);
    bob.setYspeed(bob.getYspeed() / 1.05);
    if (abs((float)bob.getYspeed()) <= 0.1)
      bob.setYspeed(0);
  }
   
  for (int i = 0; i < sue.length; i++)
    sue[i].show();
}

public void keyPressed() {
  if (key == ' ')
    accel = true;
  if (keyCode == LEFT)
    bob.turn(5);
  if (keyCode == RIGHT)
    bob.turn(-5);
  if (key == 'p')
    bob.hyperSpeed();
}

public void keyReleased() {
  if (key == ' ')
    accel = false;
}
