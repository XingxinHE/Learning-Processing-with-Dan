float redprob = 0.6;    //60% of red
float greenprob = 0.3;  //30% of green
float blueprob = 0.1;   //10% of blue
float pickacolor;       //the probability of A color

void setup() {
  size(400, 400);
  background(255);
}


void draw() {

  //all the probability of color must be 1;
  pickacolor = random(1);

  //divide the total probability one into three range
  if (pickacolor < redprob) {
    fill(255, 53, 2, 150);
  } else if (pickacolor < redprob+greenprob) {
    fill(156, 255, 28, 150);
  } else {
    fill(10, 52, 178, 150);
  }

  noStroke();
  //randomly create ellipse in the screen
  ellipse(random(width), random(height), 32, 32);
}
