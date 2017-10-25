class Ball {
  float x;  //x location of the ball
  float y;  //y
  float r;  //radius
  float xspeed; //ball x speed
  float yspeed; //ball y speed
  color c;  //the color of the ball


  //constructor Ball
  Ball(float tempR) {
    x = random(width);
    y = random(height);
    r = tempR;
    xspeed = random(-5, 5);
    yspeed = random(-5, 5);
  }


  //Move the ball randomly
  void move() {
    x += xspeed;
    y += yspeed;
    if ( x<0 || x>width) {
      xspeed= xspeed * -1;
    }
    if (y<0 || y>height) {
      yspeed= yspeed*-1;
    }
  }


  //display the ball
  void display() {
    fill(c);
    ellipse(x, y, r*2, r*2);
    c = color(200, 200, 200);
  }

  void highlight() {
    c = color(255);
  }


  //create a boolean function, determine whether intersected
  boolean testIntersect(Ball h) {
    float distance = dist(x, y, h.x, h.y);
    if (distance < r + h.r) {
      return true;
    } else {
      return false;
    }
  }
}


//Create Ball 1 &2
Ball b1;
Ball b2;



void setup() {
  size(600, 600);
  b1 = new Ball(60);
  b2 = new Ball(20);
}

void draw() {
  background(0);
  b1.move();
  b1.display();
  b2.move();
  b2.display();

  //if those two balls were intersected, highlight them
  if (b1.testIntersect(b2)) {
    b1.highlight();
    b2.highlight();
  }
}

