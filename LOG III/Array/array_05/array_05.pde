PVector [] positions =new PVector[20];//deklarieren und init

void setup() {
  size(400, 400);
  for (int i = 0; i < positions.length; i++) {
    positions[i]=new PVector(random(width), random(height));
  }
}

void draw() {
  background(255);
  fill(0);
  // Durchs array loopen
  for (int i = 0; i < positions.length; i++) {
    rect(positions[i].x, positions[i].y, 8,8);
  }
}