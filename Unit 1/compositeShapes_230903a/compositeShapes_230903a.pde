// this runs once at the start
void setup(){
  size(1024, 1024);
  colorMode(HSB, 360, 100, 100);
}

// this runs once per frame after setup
void draw(){
  
  // top left, top right, bottom left, bottom right
  PVector anchorTL = new PVector(width*0.25, height*0.25);
  PVector anchorTR = new PVector(width*0.75, height*0.25);
  PVector anchorBL = new PVector(width*0.25, height*0.75);
  PVector anchorBR = new PVector(width*0.75, height*0.75);
  
  // the colors we'll be using
  color paper = #F2FAF4;
  color brightInk = #67ffc3;
  color darkInk = #6c3937;
  
  // general drawing settings
  background(paper);
  strokeWeight(24);
  
  // draw squares in the top-left and bottom-right...
  fill(brightInk);
  noStroke();
  rectMode(CENTER);
  rect(anchorTL.x, anchorTL.y, width*0.25, width*0.25, width*0.10);
  square(anchorBR.x, anchorBR.y, width*0.25);
  // ...and circles in the bottom-left and top-right.
  ellipseMode(CENTER);
  circle(anchorTR.x, anchorTR.y, width*0.25);
  circle(anchorBL.x, anchorBL.y, width*0.25);
  
  // layer shapes on top to make more complicated shapes
  
  // top-left rectangle
  fill(paper);
  circle(anchorTL.x, anchorTL.y, width*0.10);
  stroke(paper);
  line(anchorTL.x, anchorTL.y,
       anchorTL.x, anchorTL.y + width * 0.15);
  stroke(darkInk);
  fill(brightInk);
  quad(anchorTL.x - width * 0.025, anchorTL.y,
       anchorTL.x, anchorTL.y - height * 0.025,
       anchorTL.x + width * 0.025, anchorTL.y,
       anchorTL.x, anchorTL.y + height * 0.025);
       
  // top-right circle
  fill(paper);
  noStroke();
  // erase part of the existing circle
  circle(anchorTR.x, anchorTR.y - width * 0.15, width*0.25);
  circle(anchorTR.x, anchorTR.y + width * 0.15, width*0.25);
  
  fill(darkInk);
  circle(anchorTR.x, anchorTR.y - width * 0.10, width*0.05);
  circle(anchorTR.x, anchorTR.y + width * 0.10, width*0.05);
  
  // bottom-left circle
  fill(paper);
  noStroke();
  PVector tri1 = new PVector(anchorBL.x + cos(TAU * .25) * width * .1,
                             anchorBL.y + sin(TAU * .25) * width * .1);
  PVector tri2 = new PVector(anchorBL.x + cos(TAU * (.25 + 1.0/3.0)) * width * .1,
                             anchorBL.y + sin(TAU * (.25 + 1.0/3.0)) * width * .1);
  PVector tri3 = new PVector(anchorBL.x + cos(TAU * (.25 + 2.0/3.0)) * width * .1,
                             anchorBL.y + sin(TAU * (.25 + 2.0/3.0)) * width * .1);
  triangle(tri1.x, tri1.y,
           tri2.x, tri2.y,
           tri3.x, tri3.y);
  fill(darkInk);
  circle(anchorBL.x, anchorBL.y, width*0.05);
  
  // bottom-right square
  
  
  
}
