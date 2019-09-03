float rad1 = 250;
float rad2 = 100;

void setup() {
  frameRate(60);
  size(900,650);
}

void draw() {
  background(0);
  ellipseMode(CENTER);
  fractal2(width/2,height/2,rad2);
  noStroke();
  fill(0);
  ellipse(width/2,height/2,250,250);
  fractal(width/2,height/2,rad1,250);
  noFill();
  rad1 = rad1 - 1;
  rad2 = rad2 + 1;
  if (rad1 < 225)
    rad1 = 250;
  if (rad2 > 125)
    rad2 = 100;
}

void fractal(float x, float y, float r, float baser) {
  pushMatrix();
  noFill();
  stroke(255);
  if (baser - r < 5)
    strokeWeight(baser - r);
  else
    strokeWeight(5);
  translate(x,y);
  ellipseMode(CENTER);
  ellipse(0,0,r,r);
  popMatrix();
  if (r > 25) {
    fractal(x,y,r-25, baser);
  }
}

void fractal2(float x, float y, float r) {
  pushMatrix();
  noFill();
  stroke(255);
  strokeWeight(5);
  translate(x,y);
  ellipseMode(CENTER);
  ellipse(0,0,r+100,r+100);
  popMatrix();
  if (r < 1000) {
    fractal2(x,y,r+25);
  }
}
