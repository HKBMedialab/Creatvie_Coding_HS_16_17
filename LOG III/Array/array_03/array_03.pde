int [] xpositions ={10,20,50,100,30};//deklarieren und init
int [] ypositions ={10,20,50,100,30};//deklarieren und init

void setup() {
  size(400, 400);

}

void draw() {
  background(255);
  fill(0);
  // Durchs array loopen
  for (int i = 0; i < xpositions.length; i++) {
    rect(xpositions[i], ypositions[i], 8,8);
  }
}