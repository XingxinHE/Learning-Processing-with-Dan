//Create two array, x&y posotion
int [] xposit = new int [50];
int [] yposit = new int [50];


void setup(){
  
  size(600,600);
  smooth();
  
//Initialize the array
for (int i = 0; i < xposit.length; i++){
  xposit[i] = 0;
  yposit[i] = 0;
}

}

void draw(){
  
  background(0);
  
  //Setup
  for(int i = 0; i < xposit.length - 1; i++){
  xposit[i] = xposit[i+1];
  yposit[i] = yposit[i+1];
  }
  
  //Locate the Mouse
  xposit[xposit.length-1] = mouseX;
  yposit[yposit.length-1] = mouseY;
  
  //Display the ball
  for(int i = 0; i<xposit.length; i++){
  noStroke();
  fill(0+i*5);
  ellipseMode(CENTER);
  ellipse(xposit[i], yposit[i], i, i); 
  }
}




