/* 
 *  Text einlesen
 *  HKB 16 Parametric Design, MF
 */

PFont font;  // PFont Variable definieren
float posx=0;
float posy=0;

void setup() {
  size(400, 400);
  //Laden der Schrift  
  printArray(PFont.list());
  font = loadFont ("HelveticaNeue-48.vlw");
  //font=createFont("BanglaMN",20);
  //font=createFont(PFont.list()[170],20);
  //font=createFont(PFont.list()[int(random(611))],20);
  textLeading(textAscent()+4);
}

void draw() {
  background(255);
  textFont(font, 30);                  // Font und Grösse angeben
  fill(0);
  String message = "Hello World!";
  text(message, 10, 100);
/*
  posx=0;
  posy=textAscent()+textDescent();

  for (int i=0; i<message.length(); i++) {
    char c = message.charAt(i);  
    noFill();
    stroke(255, 0, 0);
    //rect(0, -textAscent()-textDescent(), textWidth(c), textAscent()+textDescent());
    fill(0);
    pushMatrix();
    translate(posx, posy);
    text(c, 10, 100);
    posx+=textWidth(c);
    popMatrix();
   }*/
}