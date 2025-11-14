class Star {
  private int myX, myY, col;
  public Star() {
    myX = (int)(Math.random() * (width + 1));
    myY = (int)(Math.random() * (height + 1));
    col = 255;
  }
 
  public void show() {
    fill(col);
    noStroke();
    ellipse(myX, myY, 2, 2);
  }
}
