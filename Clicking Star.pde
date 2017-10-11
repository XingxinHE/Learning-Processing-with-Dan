
void setup(){
  size(1000,1000);
  background(0);
  frameRate(10);
}

void draw(){
  for(float w =500; w<800&&w>0; w= w +random(-100,100)){
    for(float h =500; h<800&&h>0; h+=random(-100,100)){
      scale(random(0.1,1.3));
 star(w,h);
 
 //star(200,400);
    }
  }
  
}
 
 

void star(float x, float y){
  fill(random(240,251),random(200,226),random(60,81),random(250));
  stroke(255);
  strokeWeight(3);
  beginShape();
  vertex(x, y-50);
  vertex(x+14, y-20);
  vertex(x+47, y-15);
  vertex(x+23, y+7);
  vertex(x+29, y+40);
  vertex(x, y+25);
  vertex(x-29, y+40);
  vertex(x-23, y+7);
  vertex(x-47, y-15);
  vertex(x-14, y-20);
  endShape(CLOSE);
}
