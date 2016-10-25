
int num =10;
float [] xpositions = new float[num];//deklarieren und init
float [] ypositions = new float[num];//deklarieren und init
color [] colors = new color[num];

void setup() {
  size(400, 400);
   for (int i = 0; i < num; i++) {
   xpositions[i]=random(width);
   ypositions[i]=random(height);
   colors[i]=color(random(255),random(255),random(255));
   }

}

void draw() {
  background(255);
  fill(0);
  // Durchs array loopen
  for (int i = 0; i < num; i++) {
    fill(colors[i]);
    rect(xpositions[i], ypositions[i], 8,8);
  }
}