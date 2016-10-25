
void setup() {
  size(400, 400);
}

void draw() {

  fill(255, 0, 0, 200);

  // Rechteck verschieben
  rect(20, 20, 50, 50);

  // Koordinatensystem verschieben
  translate(25, 20);
  fill(0, 255, 0, 200);
  rect(0, 0, 50, 50);
}