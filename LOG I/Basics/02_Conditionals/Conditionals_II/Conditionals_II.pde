
void setup() {
  size(400, 400);
  noStroke();
  background(255);
}

void draw() {

  if (mousePressed) { 
    fill(255,100,100,10);
    ellipse(mouseX, mouseY, 30, 30);
  } 
}