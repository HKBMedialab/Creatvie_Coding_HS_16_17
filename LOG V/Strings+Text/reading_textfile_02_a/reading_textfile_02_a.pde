/* 
*  Text 02
*  Text, Werte der Buchstaben auslesen und übersetzen in Grauwerte

*  HKB 16 CC, MF
*/
String[] lines;
int rectsize=50;

  

void setup() {
  size(800, 800);
  noStroke();
  lines = loadStrings("text.txt");
  
  background(255);
  
  for (int i = 0; i < lines.length; i++) {
    println(lines[i]);
    String line=lines[i];
    for(int h=0;h<line.length();h++){
      println(line.charAt(h));
      println((int)line.charAt(h));
     fill((int)line.charAt(h));
      rect(random(0,width),random(0,height),rectsize,rectsize);
    }
  }  
    
  
  
  
  
  
  
}

void draw() {
  
  
}