
void setup() {
  size(400, 400);
  background(255);
  noStroke();
}

void draw() {

  if (mousePressed) { 
    background(255);
  } else {
    fill(255, 100, 100, 10);
    ellipse(mouseX, mouseY, 30, 30);
  }
}
