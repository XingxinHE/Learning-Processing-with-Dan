Ball ball1;
Ball ball2;

float grav = 0.1;

void setup() {
size(200,200);
ball1 = new Ball(50,0,16);
ball2 = new Ball(100,50,32);
}

void draw() {
background(100);
ball1.display();
ball2.display();
ball1.grav();
ball2.grav();
}

class Ball{
  
  //Data in objects
  float rectX;
  float rectY;
  float rectW;
  float speed = 0;
  float gravity = 0.1;
  
  
  //Constructor
  Ball(float tempX, float tempY, float temprectW){
    rectX = tempX;
    rectY = tempY;
    rectW = temprectW;
  }
  
  //Function Display
  void display(){
    fill(255);
    noStroke();
    rectMode(CENTER);
    rect(rectX, rectY, rectW, rectW);
  
  }
  
  //Function Gravity
  void grav(){
  rectY = rectY + speed;
  speed = speed + gravity;
  if(rectY>height){
    speed = speed * -0.95;
  }
  }
  
}
