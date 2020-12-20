ArrayList<Asteroid> stones = new ArrayList<Asteroid>();
ArrayList<Bullet> shells = new ArrayList<Bullet>();
Star[] arr = new Star[700];
Spaceship rocket = new Spaceship();
private boolean wIsPressed = false;
private boolean aIsPressed = false;
private boolean dIsPressed = false;
private int health = 100;
public void setup() {
  size(800, 800);
  background(0);
  for(int i = 0; i < arr.length; i++) {
    arr[i] = new Star(); 
  }
  for(int i = 0; i < 81; i++) {
   stones.add(new Asteroid()); 
  }
}
public void draw() {
  background(0);
  for(int i = 0; i < arr.length; i++) {
   arr[i].show();
  }
  rocket.show();
  rocket.move();
  for(int i = 0; i < stones.size(); i++) {
    stones.get(i).show();
    stones.get(i).move();
    float d = dist((float)rocket.getCenterX(), (float)rocket.getCenterY(), (float)stones.get(i).getCenterX(), (float)stones.get(i).getCenterY());
    if(d < 20) {
      stones.remove(i);
      health -= 50;
    } else if(health == 0) {
      textSize(32);
      textAlign(CENTER);
      fill(255, 0, 0);
      text("Game Over", 400, 400);
      rocket.setSpeed(0);
      stones.get(i).setSpeed(0);
    }
  }
  for(int f = 0; f < shells.size(); f++) {
    shells.get(f).move();
    shells.get(f).show();
      for(int l = 0; l < stones.size(); l++) {
        float c = dist((float)shells.get(f).getCenterX(), (float)shells.get(f).getCenterY(), (float)stones.get(l).getCenterX(), (float)stones.get(l).getCenterY());
        if(c < 20) {
          stones.remove(l);
          shells.remove(f);
          break;
        }
      }
    }
  if(wIsPressed == true && aIsPressed == true) {
    rocket.turn(-5);
    rocket.accelerate(0.05); 
  } else if(wIsPressed == true && dIsPressed == true) {
    rocket.turn(5);
    rocket.accelerate(0.05); 
  } else if(wIsPressed == true) {
    rocket.accelerate(0.05); 
  }
}

public void keyPressed() {
  if(key == 49) {
    rocket.setSpeed(0);
    rocket.setXLocation((int)(Math.random() * 801));
    rocket.setYLocation((int)(Math.random() * 801));
  } else if(key == 100) {
    dIsPressed = true;
    rocket.turn(10);
  } else if(key == 97) {
    aIsPressed = true;
    rocket.turn(-10); 
  } else if(key == 119) {
    wIsPressed = true;
    rocket.accelerate(0.05);
  } else if(key == 50) {
    shells.add(new Bullet(rocket));
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
