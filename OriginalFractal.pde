public void setup() {
  size(500,500);
  frameRate(10);
  background(0);
  noFill();
}

public void draw() {
  //stroke((int)(Math.random()*256)+100,(int)(Math.random()*256)+100,(int)(Math.random()*256)+100);
  fractal(0,0,200);
}

public void fractal(int x, int y, int len) {
  stroke((int)(Math.random()*256)+50,(int)(Math.random()*256)+50,(int)(Math.random()*256)+50);
  rect(150+x,150+y,len,len);
  ellipse(114-x,114-y,len/2,len/2);
  ellipse(386+x,114-y,len/2,len/2);
  ellipse(114-x,386+y,len/2,len/2);
  ellipse(386+x,386+y,len/2,len/2);
  if (len > 20) {
    fractal(x+len/4,y+len/4,len/2);
    fractal(x+len/4,y-3*len/4,len/2);
    fractal(x+len/4,y+5*len/4,len/2);
  } 
}



//line(180,280,100,250);
    //line(320,280,400,250);
    //ellipse(250,300,200,100);
    //ellipse(100,250,100,80);
    //ellipse(
