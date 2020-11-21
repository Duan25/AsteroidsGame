class Spaceship extends Floater  
{   
   public Spaceship() {
    corners = 4;
    xCorners = new int[] {-8, 16, -8, -2};
    yCorners = new int[] {-8, 0, 8, 0};
    myColor = color(255);
    myCenterX = myCenterY = 200;
    myPointDirection = 90;
    myXspeed = myYspeed = 0;
   }
   public void show() {
    super.show();
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
   public void accelerate (double dAmount) {             
    double dRadians = myPointDirection*(Math.PI/180);        
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));       
  } 
   public void move () {      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
   public void turn (double degreesOfRotation) {        
    myPointDirection += degreesOfRotation;   
  } 
}
