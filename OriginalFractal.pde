public void setup() {
  size(400,400);
  ogFractal(0,0,400);
}
public void draw() {
  if (mousePressed) {
    ogFractal(0,0,400);
  }
}
public void ogFractal(int x, int y, int len) {
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  rect(x,y,len,len);
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  ellipse(x+len/2,y+len/2,len,len);
  if (len >= 30) {
    ogFractal(x+10,y+10,len-20);
  }
}