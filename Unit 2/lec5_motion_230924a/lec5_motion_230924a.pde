PVector linearMotion;

PVector start, stop, lerpMotion;
float interpolation = 0.0;

PVector mouseMotion;
PVector trackingMotion;

PVector circularMotion;

void setup(){
  size(1024, 1024);
  background(255);
  noStroke();
  textAlign(RIGHT, CENTER);
  
  //frameRate(1);
  
  linearMotion = new PVector(64, 64 * 1);
  start = new PVector(64, 64 * 2);
  stop = new PVector(width - 64, start.y);
  lerpMotion = new PVector(start.x, start.y);
  
  mouseMotion = new PVector(64, 64 * 3);
  trackingMotion = new PVector(64, 64 * 4);
  
  circularMotion = new PVector(0, 0);
}

void draw(){
  // fade stuff out over time
  // with a translucent white bg
  fill(255);
  rect(0, 0, width, height);
  
  // draw all of our circles
  int ballSize = 60;
  fill(0, 172);
  
  // linearMotion moves at a constant speed
  float linearSpeed = 5;
  circle(linearMotion.x, linearMotion.y, ballSize);
  linearMotion.x += linearSpeed;
  text("linearMotion", linearMotion.x - ballSize, linearMotion.y);
  
  // lerpMotion moves smoothly between a start and stop point
  circle(lerpMotion.x, lerpMotion.y, ballSize);
  interpolation += 0.01;
  interpolation = constrain(interpolation, 0, 1);
  lerpMotion.x = lerp(start.x, stop.x, interpolation);
  text("lerpMotion", lerpMotion.x - ballSize, lerpMotion.y);
  
  //// mouseMotion follows the mouse
  //mouseMotion.x = mouseX;
  //mouseMotion.y = mouseY;
  //circle(mouseMotion.x, mouseMotion.y, ballSize);
  //text("mouseMotion", mouseMotion.x - ballSize, mouseMotion.y);
  
  //// trackingMotion moves a % of the distance to the mouse
  //float trackingSpeed = 0.10;
  //trackingMotion.x = lerp(trackingMotion.x, mouseX, trackingSpeed);
  //trackingMotion.y = lerp(trackingMotion.y, mouseY, trackingSpeed);
  //circle(trackingMotion.x, trackingMotion.y, ballSize);
  //text("trackingMotion", trackingMotion.x - ballSize, trackingMotion.y);
  
  // translate to the center);
  translate(width/2, height/2);
  stroke(0);
  line(-width, 0, width, 0);
  line(0, -height, 0, height);
  noStroke();
  float animationSpeed = .003;
  float radius = 256;
  circularMotion.x = cos(frameCount * animationSpeed * TAU) * radius;
  circularMotion.y = sin(frameCount * animationSpeed * TAU) * radius;
  circle(circularMotion.x, circularMotion.y, ballSize);
  
  
  
}
