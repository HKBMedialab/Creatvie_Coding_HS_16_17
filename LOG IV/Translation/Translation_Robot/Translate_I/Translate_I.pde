void setup()
{
  size(200, 200);
  background(255);
  noStroke();

  // Zeichne das Rechteck 
  fill(192);
  rect(20, 20, 40, 40);
  
  // Ein rotes, durchsichtiges rechteck um 40/60 verschoben
  fill(255, 0, 0, 128);
  rect(20 + 60, 20 + 80, 40, 40);
  
  // Ein blaues, durchsichtiges rechteck um 40/60 verschoben per translation
  fill(0, 0, 255, 128);
  pushMatrix();
  translate(60, 80);
  rect(20, 20, 40, 40);
  popMatrix();
}