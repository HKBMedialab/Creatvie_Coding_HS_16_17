/* 
 *  Text 02
 *  Text, Werte der Buchstaben auslesen und übersetzen in Grauwerte
 
 *  HKB 16 CC, MF
 */
String[] lines;
int index = 0;

float posx=0;
float posy=0;
float rectsize=30;
float lineheight=40;

ArrayList<PVector> positions = new ArrayList<PVector>();
// Trick, um farben zu speichern weil arraylist color nicht kennt
ArrayList<PVector> colors = new ArrayList<PVector>();


void setup() {
  size(800, 800);
  lines = loadStrings("text.txt");

  background(0);

  for (int i = 0; i < lines.length; i++) {
    println(lines[i]);
    String line=lines[i];
    for (int h=0; h<line.length(); h++) {
      positions.add(new PVector(random(0, width), random(0, height)));
      colorMode(HSB);
      colors.add(new PVector(random(0,255),255,255));
      println(line.charAt(h));
      println((int)line.charAt(h));
    }
  }
}

void draw() {

  for (int i = 0; i < positions.size(); i++) {
    PVector p = positions.get(i);
    PVector c = colors.get(i);
    fill(c.x,c.y,c.z);
    rect(p.x, p.y, rectsize, rectsize);
  }
}