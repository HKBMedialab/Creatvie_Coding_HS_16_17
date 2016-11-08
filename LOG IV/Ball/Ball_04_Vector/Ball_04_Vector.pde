// Position des Kreises
int xPosition = 15;

// Wert, der in jedem Loop dazugezählt wird. 
// km/h ist bei uns Pixel/Frame...
PVector velocity=new PVector(1, 1);
PVector position =new PVector(0, 0);

void setup() {
  size(400, 400);
  smooth();
  pixelDensity(2);
}

void draw() {
  background(255);
  move();
  bounce();
  display();
}

void move() {
  //-> bewege den Ball
  position.add(velocity);
}

void bounce() {
  //-> bounce den Ball
  if (position.x > width || position.y < 0) {
    velocity.x*=-1;
  }

  if (position.y > height || position.y < 0) {
    velocity.y*=-1;
  }
}

void display() {
  //-> zeichne den Ball
  fill(255, 0, 0);
  ellipse(position.x, position.y, 30, 30);
};