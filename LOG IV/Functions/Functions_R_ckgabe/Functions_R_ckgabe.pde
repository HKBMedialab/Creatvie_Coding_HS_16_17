//Rückgabewert

void setup() {
  size(400, 400);

}

void draw() {
   background(255);
  float d = distance(mouseX, mouseY,200,200);
  fill(255-d,0,0);
  ellipse(200,200,20,20);
}


// berechnet die Entfernung von einem Punkt (x, y Parameter)
// zum Mittelpunkt der Anwendung
float distance(float x1, float y1,float x2, float y2) {
  float dx=x1-x2;
  float dy=y1-y2;
  float d=sqrt(dx*dx+dy*dy);
  
  return d;
}