PVector greenBall, purpleBall, orangeBall;

color green = #77E369;
color purple = #C669E3;
color orange = #E3A669;
color paper = #EDF9FA;

float angle = 0;

void setup(){
  size(1024, 1024);
  
  greenBall = new PVector();
  purpleBall = new PVector();
  orangeBall = new PVector();
  noStroke();
}

void draw(){
  background(paper);
  
  float angleStep = TAU / 100.0;
  float radius = 413;
  translate(width/2, height/2);
  
  noFill();
  stroke(0);
  circle(0, 0, radius * 2);
  line(0, 0, radius, 0);
  noStroke();
  
  greenBall.x = cos(angle) * radius;
  greenBall.y = sin(angle) * radius;
  
  angle += angleStep;
  
  drawBall(greenBall, green, 64);
  
}

void drawBall(PVector location, color ballColor, float ballSize){
  fill(ballColor);
  circle(location.x, location.y, ballSize);
  return;
}
