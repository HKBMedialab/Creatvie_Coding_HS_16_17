String [] lines;
String joinedText;
PFont font;

char [] characters; 

String alphabet ="äabcdefghijklmnopqrstuvwxyz ,.;:";
int [] counter=new int[alphabet.length()];

ArrayList <PVector>  positions = new ArrayList<PVector>();
int rectsize=20;

void countThisChar(char c) {
  int index=alphabet.indexOf(c);
  if (index>=0) {
    counter[index]+=1;
  } 
}


void setup() {
  size(800, 1200);
  frameRate(30);
  font = loadFont("HelveticaNeue-Medium-48.vlw");
  textFont(font, 20);   

  lines = loadStrings("dada_manifest.txt");
  joinedText = join(lines, " ");
  characters=joinedText.toCharArray();
  println("Textlänge "+characters.length);
  //characters=sort(characters);





  int posX=0;
  int posY =0;
  for (int i=0; i<joinedText.length(); i++) {
    positions.add(new PVector(posX, posY));
    char c=characters[i];
    countThisChar(c);
    
    // posX+=textWidth(c);
    posX+=rectsize;
    if (posX>width) {
      posX=0;
      posY+=rectsize;
    }
  }
  printArray(counter);
  
  
  
}


void draw() {
  background(0);
  for (int i=0; i<positions.size(); i++) {
    PVector p = positions.get(i);
    //char c =joinedText.charAt(i);
    char c=characters[i];
    int index=alphabet.indexOf(c);
    float fontsize=10;
    
    if(index>=0){
    fontsize=map(counter[index],0,100,10,48);
    }
    
    textFont(font, fontsize); 

    pushMatrix();
    translate(p.x, p.y);
    fill(255);
    rect(0, 0, rectsize, rectsize);
    fill(0);
    text(c, 3, rectsize-1);
    popMatrix();
  }
}