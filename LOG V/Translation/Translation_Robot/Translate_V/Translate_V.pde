void setup()
{
  size(200, 200);
  background(255);
  smooth();
  fill(192);
  noStroke();
  rect(40, 40, 40, 40);
  
  pushMatrix();
  // Rotationspunkt bewegen
  translate(40, 40); 
  
  // Koordinatensystem drehen
  rotate(radians(45));
  
  // zeichnen
  fill(0);
  rect(0, 0, 40, 40);
  popMatrix();
}