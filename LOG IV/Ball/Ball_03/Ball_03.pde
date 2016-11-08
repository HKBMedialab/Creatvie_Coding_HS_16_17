// Position des Kreises
int xPosition = 15;

// Wert, der in jedem Loop dazugezählt wird. 
// km/h ist bei uns Pixel/Frame...
int speed = 5;

void setup() {
  size(400, 400);
  smooth();
}

void draw() {
  background(255);
  move();
  bounce();
  display();
}

void move() {
  //-> bewege den Ball
  xPosition+=speed;
}

void bounce() {
  //-> bounce den Ball
  if (xPosition > 400 || xPosition < 0) {
    speed*=-1;
  }
}

void display() {
  //-> zeichne den Ball
  fill(255,0,0);
  ellipse(xPosition, 100, 30, 30);
};