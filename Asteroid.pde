class Asteroid extends Floater {
  private double rotate;
  public Asteroid() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    double angle[] = new double[corners];
    for (int i = 0; i < 6; i++) {
      angle[i] = 2 * PI * i/6.7 + 2 * Math.random() * PI/6;
      xCorners[i] = (int)(12 * (Math.random() + 1) * Math.cos(angle[i]));
      yCorners[i] = (int)(12 * (Math.random() + 1) * Math.sin(angle[i]));
    }
   
    myColor = (int)(Math.random() * 100 + 50);
    myCenterX = (int)(Math.random() * (width + 1));
    myCenterY = (int)(Math.random() * (height + 1));
    if (Math.random() > 0.5) {myXspeed = (int)(Math.random() * 5 + 1);}
    else {myXspeed = (int)(Math.random() * 5 - 5);}
    if (Math.random() > 0.5) {myYspeed = (int)(Math.random() * 5 + 1);}
    else {myYspeed = (int)(Math.random() * 5 - 5);}
    
    myYspeed = (int)(Math.random() * 11 - 5);
    myPointDirection = 0;
    rotate = Math.random() * 20 - 10;
  }
 
  public void move() {
    super.move();
    turn(rotate);
  }
  
  public double getCenterX() {
    return myCenterX;
  }
  
  public double getCenterY() {
    return myCenterY;
  }
}
