Stripe [] stripes= new Stripe[20];

void setup(){
  //Setup stripes array
  for(int i = 0; i<stripes.length; i++){
  stripes[i]=new Stripe(i);
  }
    
 size(600,600); 
}


void draw(){
  
  background(100);
  for(int i = 0; i<stripes.length; i++){
  stripes[i].display();
  stripes[i].move();
  stripes[i].rollover(mouseX);
}  
}


class Stripe{
  
  //variables
  float x;
  float w;
  float speed;
  boolean booleanToggle;
  
  //Initialize
  Stripe(int loX){
    x = loX*30;
    w = 10;
    speed = 1;
  }
  
  //Display Function
  void display(){
    if(booleanToggle){
      fill(0);
    }
    else{
     fill(255);
    }
    noStroke();
    rect(x,0,w,height);
  
}

  //Move Function
  void move(){
    x +=speed;
    if(x>width){
      x=0;
    }
}

  //Rollover Function
  void rollover(int mx){
  if(mx>x&&mx<x+w){
    booleanToggle = true;
  } 
  else {
    booleanToggle = false;
  }
  }
}
