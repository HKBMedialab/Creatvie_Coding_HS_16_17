// Position des Kreises
int xPosition = 15;

// Wert, der in jedem Loop dazugezählt wird. 
// km/h ist bei uns Pixel/Frame...
int speed = 10;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  xPosition+=speed; 

  /*conditionals sind Fragen. Wir fragen eine ganz bestimmte Bedingung ab 
  und wenn die Antwort "JA" ist, fürht das Programm eine entsprechende Anweisung 
  zwischen den geschweiften Klammern aus. In unserem Fall fragen wir:
  "Ist die xPosition des Kreises grösser als die Breite unseres Fensters? 
  Falls ja, bitte setze den Kreis wieder auf 0"
  */

  if (xPosition > 400 || xPosition < 0 ) {
   speed=speed*-1;
  }
  

  
  

  ellipse(xPosition, 100, 30, 30);
}