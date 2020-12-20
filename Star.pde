class Star {
 private int myX, myY, myWH, myColor;
 public Star() {
  myWH = (int)(Math.random() * 7);
  myX = (int)(Math.random() * 801);
  myY = (int)(Math.random() * 801);
  myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
 }
 public void show() {
   fill(myColor);
   stroke(0);
   ellipse(myX, myY, myWH, myWH);
 }
}
