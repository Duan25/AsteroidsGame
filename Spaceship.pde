class Spaceship extends Floater {   
   public Spaceship() {
    corners = 4;
    xCorners = new int[] {-8, 16, -8, -2};
    yCorners = new int[] {-8, 0, 8, 0};
    myColor = color(143, 101, 34);
    myCenterX = myCenterY = 400;
    myPointDirection = 0;
    myXspeed = myYspeed = 0;
   }
   public void setSpeed(int zero) {
     myXspeed = myYspeed = zero;
   }
   public void setXLocation(double myXteleport) {
     myCenterX = myXteleport; 
   }
   public void setYLocation(double myYteleport) {
     myCenterY = myYteleport;
   }
   public double getCenterX() {
    return myCenterX;
  }
   public double getCenterY() {
    return myCenterY; 
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed; 
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  public void show ()  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    translate((float)myCenterX, (float)myCenterY);
   
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    rotate(dRadians);
    
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    if(wIsPressed == true) {
      fill(255, 0, 0);
      stroke(255, 0, 0);
      arc(-2, 0, 20, 20, radians(126), radians(232));
    }
      rotate(-1*dRadians);
      translate(-1*(float)myCenterX, -1*(float)myCenterY); 
   } 
}
