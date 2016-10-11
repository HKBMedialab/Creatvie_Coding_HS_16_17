void setup(){
  size(200,200);
};

void draw () {
  background (255);
   
  for (int i=0; i < 20; i = i + 1) { //i++
    line (0, i * 10, 320, i * 10);
  }
}