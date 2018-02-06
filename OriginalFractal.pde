public void setup() {
  size(400,400);
  ogFractal(100,100,200);
  rectMode(CENTER);
}
public void ogFractal(int x, int y, int len) {
  ellipse(x,y,len,len);
  ellipse(x+len,y,len,len);
  ellipse(x,y+len,len,len);
  ellipse(x+len,y+len,len,len);
  /*rect((int)(x-len/2.95),(int)(y-len/2.94),(int)(len/1.44),(int)(len/1.44));
  rect((int)(x+1.95*len/2.95),(int)(y-len/2.94),(int)(len/1.44),(int)(len/1.44));
  rect((int)(x-len/2.95),(int)(y+1.95*len/2.94),(int)(len/1.44),(int)(len/1.44));
  rect((int)(x+1.95*len/2.95),(int)(y+1.95*len/2.94),(int)(len/1.44),(int)(len/1.44));
  abandoned, looks bad*/
  if (len >= 30) {
    ogFractal(x-len/5,y-len/5,(int)(len/2.5));
    ogFractal(x+4*len/5,y-len/5,(int)(len/2.5));
    ogFractal(x+4*len/5,y+4*len/5,(int)(len/2.5));
    ogFractal(x-len/5,y+4*len/5,(int)(len/2.5));
  }
}