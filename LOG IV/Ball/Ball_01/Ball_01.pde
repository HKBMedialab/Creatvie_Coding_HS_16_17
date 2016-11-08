

// Position des Kreises
int xPosition = 15;

// Wert, der in jedem Loop dazugezählt wird. 
// km/h ist bei uns Pixel/Frame...
int speed = 5;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  //zur alten Position wird die Geschwindigkeit, respektive die seit dem letzen 
  //Loop zurückgelegte Strecke addiert
  xPosition+=speed;
  ellipse(xPosition, 100, 30, 30);
}