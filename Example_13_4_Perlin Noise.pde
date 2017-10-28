float time = 0.0;
float increment = 0.01;

void setup() {
  size(200, 200);
  smooth();
}

void draw() {

  background(255);

  //perlin noise is always between 0~1
  //so it has to multiple a number, in this case; the width
  float n = noise(time)*width;

  //if we do not increment the time, the value of perlin noise won't change at all
  time+=increment;

  fill(0);
  //then the ellipse seems like boom and off
  ellipse(width/2, height/2, n, n);
}
