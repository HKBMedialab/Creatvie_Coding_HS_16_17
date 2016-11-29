

int anzahl =50;
color fillcolor=color(50, 255, 255, 100);

void setup() {
  size(400, 400);
  smooth();
  noStroke();
  //Für einen Farbkreis ist das HSB-Modell einfacher...
  colorMode(HSB, 255);
  
  
}

void draw() {
  background(255);
  // Koordinatensystem verschieben



  translate(width/2, height/2);

  for (int i=0; i<anzahl; i++) {
    rotate(2*PI/anzahl);
    //immer im Winkel des Farbkreisess weiter...
    fillcolor=color(255/anzahl*i, 255, 255, 100);
    fill(fillcolor);
    rect(0, 0, 10, 100);
  }
}