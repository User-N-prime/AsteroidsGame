Spaceship bob;
boolean accel = false;
Star[] sue = new Star[200];


public void setup() {
  size(1000, 1000);
  bob = new Spaceship();
  for (int i = 0; i < sue.length; i++)
    sue[i] = new Star();
}

public void draw() {
  background(0);
  bob.show();
  bob.move();
  if (accel)
    bob.accelerate(0.1);
  if (!accel) {
    if (bob.getXspeed() > 0.1) {
      bob.setXspeed(bob.getXspeed() - 0.1);
      if (bob.getXspeed() <= 0.1)
        bob.setXspeed(0);
    }
    if (bob.getXspeed() < -0.1) {
      bob.setXspeed(bob.getXspeed() + 0.1);
      if (bob.getXspeed() >= -0.1)
        bob.setXspeed(0);
    }
    if (bob.getYspeed() > 0.1) {
      bob.setYspeed(bob.getYspeed() - 0.1);
      if (bob.getYspeed() <= 0.1)
        bob.setYspeed(0);
    }
    if (bob.getYspeed() < -0.1) {
      bob.setYspeed(bob.getYspeed() + 0.1);
      if (bob.getYspeed() >= -0.1)
        bob.setYspeed(0);
    }
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
