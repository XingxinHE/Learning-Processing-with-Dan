//create an array with 4 nums
float [] randoms = new float [4];

//set up the index to zero
int index = 0;

void setup() {
  size(200, 200);

  //initialize the array; each element was input a random number
  for (int i = 0; i<randoms.length; i++) {
    randoms[i]=random(0, 256);
  }
  //slow down the framerate
  frameRate(1);
}

void draw() {

  //set up the array; start from zero
  background(randoms[index]);

  //this is a math trick; sounds like a loop, from zero to the length; over and over again
  index = (index+1)%randoms.length;
}
