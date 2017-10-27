//create an array
float [] randomnums;

//setup
void setup() {
  size(200, 200);
  randomnums = new float [20];
}

void draw() {
  background(0);
  //create a parameter called index; pick a random nums of the array!
  int index = int(random(randomnums.length));

  //increase the value of the specific random element of the array
  randomnums[index]++;


  stroke(0);
  fill(175);

  for (int x = 0; x<randomnums.length; x++) {

    //ATTENTION! now is time to draw the rect;
    //the height of the rect can tell the value of the element in the array
    //now is draw each element!not random[index]!!!
    rect(x*10, 0, 9, randomnums[x]);
  }
}
