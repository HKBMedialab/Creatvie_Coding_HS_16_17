void setup(){
  size(200,200);
};

void draw () {
  background (255);
 
  for (int i=0; i < mouseY; i++) {
    // weise der Linienfarbe einen Farbwert 
    // mittels der Zählvariable "i" zu
    stroke (i * 2, i, 0);
 
    // zeichne eine horizontale Linie 
    // verwende den Wert der 
    // Zählvariable als y-Position 
    line (0, i, width, i);
  }
}