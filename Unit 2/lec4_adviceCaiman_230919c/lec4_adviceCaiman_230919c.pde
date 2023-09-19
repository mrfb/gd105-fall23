// Lecture 4 Demonstration
// Making an vintage Advice Animal

// declare image at the global scope
PImage caiman;

void setup(){
  size(1024, 1024);
  noStroke();
  
  // initialize image
  caiman = loadImage("caiman.png");
}

void draw(){
  // draw a background made out of colorful triangles
  drawBackground();
  
  // slap an image of an animal on top
  scale(0.76);
  image(caiman, 0, 228);
  
  // draw text at the top and bottom
}

void drawBackground(){
  color bg1, bg2, bg3, bg4; // declare colors
  bg1 = #111111;
  bg2 = #333333;
  bg3 = #555555;
  bg4 = #777777;
  
  // draw a background made out of colorful triangles
  background(bg1);
  
  translate(width*0.50, height*0.50);
  fill(bg2);
  triangle(0, 0,
           width*-0.50, height*-0.50,
           width*0.00, height*-0.50);
  fill(bg3);
  triangle(0, 0,
           width*0.00, height*-0.50,
           width*0.50, height*-0.50);
  fill(bg4);
  triangle(0, 0,
           width*0.50, height*0.00,
           width*0.50, height*-0.50);
  // rotate halfway around and repeat
  rotate(TAU * 0.50);
  fill(bg2);
  triangle(0, 0,
           width*-0.50, height*-0.50,
           width*0.00, height*-0.50);    
  fill(bg3);
  triangle(0, 0,
           width*0.00, height*-0.50,
           width*0.50, height*-0.50);
  fill(bg4);
  triangle(0, 0,
           width*0.50, height*0.00,
           width*0.50, height*-0.50);
           
  resetMatrix();
}
