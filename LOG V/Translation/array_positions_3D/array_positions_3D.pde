
int anzahl=200;
PVector [] positionen = new PVector[anzahl];


color [] farben = new color[anzahl];

void setup() {
  size(500, 500,P3D);
  neuePositionen();
}

void draw() {
  background(0);
  for (int i=0; i<anzahl; i++) { //i=i+1
    fill(farben[i]);
    pushMatrix();
    translate(positionen[i].x,positionen[i].y,positionen[i].z);
    rect(0, 0, 10, 10);
    popMatrix();
  }
}


// Funktion zum generieren neuer Positionen und Farben
void neuePositionen() {
    for (int i=0; i<anzahl; i++) { 
    positionen[i] = new PVector(random(0,500),random(0,500),random(-1000,1000));
    farben[i]=color(random(0, 255), random(0, 255), random(0, 255));
  }
}


void keyReleased() {
  if (key == 'p') {
    neuePositionen();
  }
}