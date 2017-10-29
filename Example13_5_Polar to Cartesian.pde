//use polar coordinate to describe a sketch

//the radius can start from zero and incrementing
float r=20;
float theta=0;

void setup() {
  size(200, 200);
  background(255);
  smooth();
}

void draw() {
  //convert polar coordinate to Cartesian coordinate
  float x=r*cos(theta);
  float y=r*sin(theta);

  //Draw an ellipse at x, y
  noStroke();
  fill(0);
  //the reason why add width/2 & height/2 is that
  //map the view from 0,0 to center
  ellipse(x+width/2, y+height/2, 16, 16);

  //Increment the angle
  theta+=0.01;
  
  //Increment the radius, so it can draw over and over again
  r+=0.05;
}
