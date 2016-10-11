


void setup(){
  size(200,200);
  noFill();
};

void draw () {
  background (255);
 
  for (int i=0; i <200; i=i+10) {
    fill (0,20);
    stroke(0,40);
    ellipse (width / 2, height / 2, i, i);

  }
}