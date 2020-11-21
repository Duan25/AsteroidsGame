Star[] arr = new Star[200];
Spaceship rocket = new Spaceship();
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
public void setup() 
{
  size(400, 400);
  background(0);
  for(int i = 0; i < arr.length; i++) {
    arr[i] = new Star(); 
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < arr.length; i++) {
   arr[i].show();
  }
  if(key == 100) {
    dIsPressed = true;
    rocket.turn(5);
    rocket.accelerate(0.01);
    rocket.move();
  }
  if(key == 97) {
    aIsPressed = true;
    rocket.turn(-5);
    rocket.accelerate(0.01);
    rocket.move();
  }
  if(key == 119) {
    wIsPressed = true;
    rocket.accelerate(0.01);
    rocket.move();
  }
  keyReleased();
  rocket.show();
  if(wIsPressed == true && aIsPressed == true) {
    rocket.accelerate(0.01);
    rocket.move();
    rocket.turn(-5);
  } else if (wIsPressed == true && dIsPressed == true) {
    rocket.accelerate(0.01);
    rocket.move();
    rocket.turn(5);
  }
} 

public void keyPressed() {
  if(key == 49) {
    rocket.setSpeed(0);
    rocket.setXLocation((int)(Math.random() * 401));
    rocket.setYLocation((int)(Math.random() * 401));
  } 
}

public void keyReleased() {
  if(key == 100) {
   dIsPressed = false;
  }
  if(key == 97) {
   aIsPressed = false;
  }
  if(key == 119) {
   wIsPressed = false;
  }
}
