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
  
  PVector[] positions;
  int numChars;

  

void setup() {
  size(800, 800);
  lines = loadStrings("text.txt");
  
  background(0);
  
  for (int i = 0; i < lines.length; i++) {
    println(lines[i]);
    String line=lines[i];
    for(int h=0;h<line.length();h++){
      numChars++;
      println(line.charAt(h));
      println((int)line.charAt(h));
       
    }
  }  
    
  positions =new PVector[numChars];
  
  
  
  
  
  
}

void draw() {
  
  posx=0;
  posy=0;
  
 
  for(int i=0;i<lines.length;i++){
    String line=lines[i];
    posx=0;
    
    for(int h=0;h<line.length();h++){
      fill((int)line.charAt(h));
      rect(posx, posy, rectsize,rectsize); 
      posx+=rectsize;
      
      if(posx>width){
        posx=0;
        posy+=lineheight;
      }
    }
    
    posy+=lineheight;
    
  }
  
}