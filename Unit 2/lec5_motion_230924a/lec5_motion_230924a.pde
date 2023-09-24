PVector linearMotion;

void setup(){
  size(1024, 1024);
  background(255);
  noStroke();
  
  linearMotion = new PVector(64, 64);
}

void draw(){
  // fade stuff out over time
  // with a translucent white bg
  fill(255, 25);
  rect(0, 0, width, height);
  
  int ballSize = 64;
  
  fill(0);
  circle(linearMotion.x, linearMotion.y, ballSize);
  
}
