
int anzahl=200;
float [] xPositionen = new float[anzahl];
float [] yPositionen = new float[anzahl];
color [] farben = new color[anzahl];

void setup() {
  size(500, 500);
  neuePositionen();
}

void draw() {
  background(0);
  for (int i=0; i<anzahl; i++) { //i=i+1
    fill(farben[i]);
    rect(xPositionen[i], yPositionen[i], 10, 10);
  }
}


// Funktion zum generieren neuer Positionen und Farben
void neuePositionen() {
    for (int i=0; i<anzahl; i++) { 
    xPositionen[i]=random(0, width);
    yPositionen[i]=random(0, height);
    farben[i]=color(random(0, 255), random(0, 255), random(0, 255));
  }
}


void keyReleased() {
  if (key == 'p') {
    neuePositionen();
  }
}