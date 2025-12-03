class Bullet extends Floater {
  public Bullet(Spaceship ship) {
    myColor = 255;
    myCenterX = ship.getCenterX();
    myCenterY = ship.getCenterY();
    myXspeed = ship.getXspeed() + 10 * Math.cos(ship.getDirection() * PI/180);
    myYspeed = ship.getYspeed() + 10 * Math.sin(ship.getDirection() * PI/180);
    myPointDirection = 0;
  }
 
 
 
  public void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 6, 7);
    myColor -= 3;
  }
  
  public double getCenterX() {
    return myCenterX;
  }
  
  public double getCenterY() {
    return myCenterY;
  }
  
  public double getColor() {
    return myColor;
  }
}
