class Ball {
  float x;
  float y;
  float speed;
  float w;
  float gravity = 0.1;
  
  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
  }
  
  void gravity() {
    // Add gravity to speed
    speed = speed + gravity;
  }
  
  void move() {
    // Add speed to y location
    y = y + speed;
    // If square reaches the bottom
    // Reverse speed
    if (y > height) {
      speed = speed * -0.95;
      y = height;
    }
  }
  
  void display() {
    // Display the circle
    fill(101);
    stroke(0);
    ellipse(x,y,w,w);
  }
}  



Ball [] balls = new Ball [0];

void setup(){
size(400,400);
frameRate(60);

//balls[0]=new Ball(50,0,16);
}

void mousePressed(){
Ball b= new Ball(mouseX, mouseY,10);
balls=(Ball[]) append(balls,b);
}
  


void draw(){
background(200);
for(int i= 0; i<balls.length; i++){
  balls[i].display();
  balls[i].move();
  balls[i].gravity();
}
}
