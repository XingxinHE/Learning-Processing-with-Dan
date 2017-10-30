void setup() {

  size(400, 200);
}

void draw() {
  background(255);
  strokeWeight(0.1);
  stroke(0);

  branch(width/2, height, 200);
}


//lx is the x location, y vice versa
//IMPORTANT!!! r is half of the width also equal the length from lx to the edge!!!
void branch(float lx, float ly, float r) {

  line(lx-r, ly-r, lx, ly);
  line(lx, ly, lx+r, ly-r);



  if (r>2) {

    branch(lx-r/2, ly-r/2, r/2);
    branch(lx+r/2, ly-r/2, r/2);

    //IMPORTANT!!!u have to run the branch function before multiply 0.5
    //since the expression of the sub-branch is according to the 'r' when
    // it is not transformed yet
    r*=0.5;
  }
}


