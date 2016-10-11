
void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  /*conditionals sind Fragen. Wir fragen eine ganz bestimmte Bedingung ab 
   und wenn die Antwort "JA" ist, fürht das Programm eine entsprechende Anweisung 
   zwischen den geschweiften Klammern aus. In unserem Fall fragen wir:
   "Ist der Mausbutton gedrückt?
   Falls ja, bitte zeichne einen Kreis, falls nein, bitte zeichne ein Rechteck!"
   */

  if (mousePressed) {
    ellipse(115, 115, 30, 30);
  } else {
    rect(100, 100, 30, 30);
  }
}