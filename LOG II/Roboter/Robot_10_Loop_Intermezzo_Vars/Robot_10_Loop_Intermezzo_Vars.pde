//vars
int rectsize=40;
int iterations=800;
float posX;
float posY;

void setup() {
  size(600, 600);
  background(255);
  colorMode(HSB);
  noStroke();
  for (int i=0; i<iterations; i++) {
    fill(random(255), 255, 255, 100);
    posX=random(width-rectsize);
    posY= random(height-rectsize);
    rect(posX,posY, rectsize, rectsize);
  }
}