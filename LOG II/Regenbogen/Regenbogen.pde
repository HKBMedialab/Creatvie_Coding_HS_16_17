
int rectsize=20;
int iterations=900;
int posX=0;
int posY=0;
int farbton=0;

void setup() {
  size(600, 600);
  background(255);
  noStroke();
  colorMode(HSB);

  for (int i=0; i<iterations; i=i+1) {
    fill(farbton,255,255);
    rect(posX,posY,rectsize,rectsize);
    posX=posX+rectsize;
    
    farbton=farbton+1;
    if(farbton>255){
    farbton=0;
    }
    
    //Umruch
    if(posX>width){
    posY=posY+rectsize;
    posX=0;
    }
    
  }
}