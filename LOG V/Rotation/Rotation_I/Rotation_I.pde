
void setup() {
  size(400, 400);
  smooth();
  noStroke();
}

void draw() {

  // Koordinatensystem verschieben
  translate(25, 20);
  fill(0, 0, 100, 200);
  rect(0, 0, 50, 50);
  
  //Um den Ursprung des Systems rotieren 
  rotate(PI/10);
  fill(255, 0, 0, 200);
  rect(0, 0, 50, 50);
}