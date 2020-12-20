class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(6);
  }
  public void show() {
    fill(255, 0, 0);
    stroke(255, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY; 
  }
}
