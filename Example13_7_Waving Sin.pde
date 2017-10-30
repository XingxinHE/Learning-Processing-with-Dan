void setup(){
  size(400,200);
}


void draw(){

  line(0,height/2,width,height/2);
  for(int i=0;i<20*PI;i+=(PI/2)){
  ellipse(i*200/PI,sin(i)*200/PI+height/2,16,16); 
}
}
