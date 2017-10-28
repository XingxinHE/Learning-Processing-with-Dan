float xtime = 0.0;
float ytime=100.0;
float increment = 0.01;

void setup() {
  size(200, 200);
  smooth();
}


void draw() {
  background(0);

  //you may ask, in this code, why don't use x+=1;this kind
  //of tricks to move the ball randomly
  //because perlin noise IS a continuous sequence of floating number
  //hence, we just has to initialize their location x and y
  float x = noise(xtime)*width;
  float y = noise(ytime)*height;


  xtime+=increment;
  ytime+=increment;

  fill(200);
  ellipse(x, y, 20, 20);
}
