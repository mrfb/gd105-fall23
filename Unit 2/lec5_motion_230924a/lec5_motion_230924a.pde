PVector ball;

void setup(){
  size(1024, 1024);
  background(255);
  noStroke();
  
  ball = new PVector(512, 512);
}

void draw(){
  // fade stuff out over time
  // with a translucent white bg
  fill(255, 25);
  
  rect(0, 0, width, height);
  
  int ballSize = 40;
  
  fill(0);
  circle(ball.x, ball.y, ballSize);
  
}
