ArrayList<Asteroid> stones = new ArrayList<Asteroid>();
Star[] arr = new Star[200];
Spaceship rocket = new Spaceship();
private boolean wIsPressed = false;
private boolean aIsPressed = false;
private boolean dIsPressed = false;
public void setup() 
{
  size(400, 400);
  background(0);
  for(int i = 0; i < arr.length; i++) {
    arr[i] = new Star(); 
  }
  for(int i = 0; i < 11; i++) {
   stones.add(0, new Asteroid()); 
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < arr.length; i++) {
   arr[i].show();
  }
  rocket.show();
  rocket.move();
  for(int i = 0; i < stones.size(); i++) {
    stones.get(i).show();
    stones.get(i).move();
    stones.get(i).accelerate();
    float d = dist((float)rocket.getCenterX(), (float)rocket.getCenterY(), (float)stones.get(i).getCenterX(), (float)stones.get(i).getCenterY());
    if (d < 10) {
      stones.remove(i);
    }
  }
  if(wIsPressed == true && aIsPressed == true) {
    rocket.turn(-5);
  } else if(wIsPressed == true && dIsPressed == true) {
   rocket.turn(5);
  } else if(wIsPressed == true) {
   rocket.accelerate(); 
  }
} 

public void keyPressed() {
  if(key == 49) {
    rocket.setSpeed(0);
    rocket.setXLocation((int)(Math.random() * 401));
    rocket.setYLocation((int)(Math.random() * 401));
  } else if(key == 100) {
    dIsPressed = true;
    rocket.turn(10);
  } else if(key == 97) {
    aIsPressed = true;
    rocket.turn(-10); 
  } else if(key == 119) {
    wIsPressed = true;
    rocket.accelerate();
  }
}

public void keyReleased() {
  if(key == 100) {
   dIsPressed = false;
 } else if(key == 97) {
   aIsPressed = false;
  } else if(key == 119) {
   wIsPressed = false;
  }
}
