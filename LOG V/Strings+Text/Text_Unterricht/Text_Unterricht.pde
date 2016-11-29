String [] lines;
String joinedText;
ArrayList <PVector> positions = new ArrayList <PVector>();
ArrayList <PVector> colors = new ArrayList <PVector>();

int rectsize=20;

PFont font;

void setup() {
  size(800, 800);
  frameRate(30);
  noStroke();

  font = loadFont("HelveticaNeue-30.vlw");
  textFont(font, rectsize);

  lines=loadStrings("dada_manifest.txt");
  joinedText = join(lines, " "); 

  int posX=0;
  int posY=0;
  for (int i=0; i<joinedText.length(); i++) {    
    positions.add(new PVector(posX, posY));
    int h =(int)joinedText.charAt(i);
    int mappedh=(int)map(h, 65, 130, 0, 255);
    colors.add(new PVector(mappedh, 255, 255));
    posX+=rectsize;
    if (posX>width-rectsize) {
      posX=0;
      posY+=rectsize;
    }
  }
}

void draw() {
  background(0);
  for (int i=0; i<positions.size(); i++) {
    PVector p = positions.get(i);
    PVector c = colors.get(i);
    pushMatrix();
    translate(p.x, p.y);

    colorMode(HSB);
    fill(c.x, c.y, c.z);
    rect(0, 0, 20, 20);

    colorMode(RGB);  
    char ch = joinedText.charAt(i);
    if (ch=='D' || ch == 'd') {
      fill(255);
      text('D', 0, rectsize);
    }

    if (ch == 'A' || ch == 'a') {
      fill(255);
      text('A', 0, rectsize);
    }

    popMatrix();
  }
}