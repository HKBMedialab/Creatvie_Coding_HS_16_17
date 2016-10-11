
int xOffset=0;

color bodycolor=color(38, 38, 200);
color trianglecolor=color(250, 100, 100);


void setup() {
  size(400, 400);
}


void draw() {
  background(255);

  // erstelle zwei Variablen zur spÃ¤teren 
  // Ablage der Positionen
  float x;
  float y;


  //Matrix Zeile
  for (int i=0; i <5; i++) {

    //Matrix spalte
    for (int k=0; k <5; k++) {


      // DIESER TEIL WIRD FÜR JEDEN 
      // KREIS AUSGEFüHRT!

      // Berechnung der Position
      x = i * 50;
      y = k *50;

      // bestimme die FÃ¼llfarbe und zeichne 
      // anschlieÃŸend die Ellipse
      fill (i * 50, 0, k * 50);
      rect (x, y, 40, 40);
    }
  }
}