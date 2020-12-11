class Asteroid extends Floater {
  private double rotationSpeed;
  public Asteroid() {
    rotationSpeed = 4;
    corners = 6;
    xCorners = new int[corners]; 
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random() * 4 - 11);
    yCorners[0] = (int)(Math.random() * 4 - 11);
    xCorners[1] = (int)(Math.random() * 11 + 7);
    yCorners[1] = (int)(Math.random() * 4 - 11);
    xCorners[2] = (int)(Math.random() * 13 + 7);
    yCorners[2] = 0;
    xCorners[3] = (int)(Math.random() * 11 + 7);
    yCorners[3] = (int)(Math.random() * 11 + 7);
    xCorners[4] = (int)(Math.random() * 4 - 11);
    yCorners[4] = (int)(Math.random() * 11 + 7);
    xCorners[5] = (int)(Math.random() * 4 - 11);
    yCorners[5] = 0;
    myColor = color(255);
    myCenterX = (int)(Math.random() * 401);
    myCenterY = (int)(Math.random() * 401);
    myPointDirection = (int)(Math.random() * 361);
    myXspeed = myYspeed = 0;
  }
  public void move() {
   turn(rotationSpeed);
   super.move();
  }
  public void accelerate() {
   super.accelerate(0.01); 
  }
  public double getCenterX() {
   return myCenterX;
  }
  public double getCenterY() {
   return myCenterY; 
  }
 
}
  
