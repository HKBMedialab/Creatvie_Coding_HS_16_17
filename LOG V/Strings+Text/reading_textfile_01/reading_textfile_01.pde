/* 
*  Text 01
*  Text einlesen
*  HKB 16 CC, MF
*/
String[] lines;
int index = 0;

void setup() {
  size(500, 500);
  lines = loadStrings("text.txt");
  
  for (int i = 0; i < lines.length; i++) {
    println(lines[i]);
    String line=lines[i];
    for(int h=0;h<line.length();h++){
      println(line.charAt(h));
    }
  }  
}

void draw() {
  
}