class Spaceship extends Floater  
{  
  public Spaceship() {
    corners = 4;
    xCorners = new int[] {-8, 16, -8, -2};
    yCorners = new int[] {-8, 0, 8, 0};
    myColor = color(255, 0, 0);
    myCenterX = width / 2;
    myCenterY = height / 2;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  }
 
  public void setXspeed(double x) {
    myXspeed = x;
  }
 
  public double getXspeed() {
    return myXspeed;
  }
 
  public void setYspeed(double y) {
    myYspeed = y;
  }
 
  public double getYspeed() {
    return myYspeed;
  }
  
  public double getDirection() {
    return myPointDirection;
  }
  
  public double getCenterX() {
    return myCenterX;
  }
  
  public double getCenterY() {
    return myCenterY;
  }
  
  public void hyperSpeed() {
    myCenterX = Math.random() * (width + 1);
    myCenterY = Math.random() * (height + 1);
    myPointDirection = Math.random() * 360;
    myXspeed = myYspeed = 0;
  }
}
