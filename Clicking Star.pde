
void setup(){
  size(640,360);
  background(random(250),random(250),random(250));
}

void draw(){
  if(mousePressed){
  star(mouseX, mouseY);
  }
}

void mousePressed(){
    background(random(250),random(250),random(250));
}

void star(float x, float y){
  fill(random(250),random(250),random(250),random(100));
  stroke(random(250),random(250),random(250));
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
