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
ArrayList<Integer> speed = new ArrayList<Integer>();


void setup() {
  size(800, 800,P3D);
  frameRate(30);
  lines = loadStrings("text.txt");

  background(0);

  for (int i = 0; i < lines.length; i++) {
    println(lines[i]);
    String line=lines[i];
    for (int h=0; h<line.length(); h++) {
      positions.add(new PVector(random(0, width), random(0, height),random(-1000,1000)));
      colorMode(HSB);
      colors.add(new PVector(random(0, 255), 255, 255));
    //  speed.add((int)random(1,10));
            speed.add(5);

      println(line.charAt(h));
      println((int)line.charAt(h));
    }
  }
}

void draw() {
background(0);
  for (int i = 0; i < positions.size(); i++) {
    PVector p = positions.get(i);
    p.x+=speed.get(i); 
    if (p.x>width) {
      p.x=0;
    }
    PVector c = colors.get(i);
    fill(c.x, c.y, c.z);
    pushMatrix();
    translate(p.x,p.y,p.z);
    rect(0, 0, rectsize, rectsize);
    popMatrix();
  }
}