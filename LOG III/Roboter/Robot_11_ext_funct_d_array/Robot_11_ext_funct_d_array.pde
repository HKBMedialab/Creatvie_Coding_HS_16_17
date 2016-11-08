/* 
 *  Roboter 11
 *  Externe Funktionen
 *  HKB 16 Creative Coding, MF
 */


int dicke=200;
int mitteX;
int mitteY;
int armdicke=20;
int beindicke=20;



int numRost=50;

float [] posx=new float[numRost];
float [] posy=new float[numRost];



void setup() {
  size(500, 500);
  mitteX=width/2;
  mitteY=height/2;
  
    for(int i=0;i<numRost;i++){
    posx[i]=random(mitteX-dicke/2,mitteX+dicke/2);
    posy[i]=random(mitteY-150,mitteY+100);
  }
  
  
}

void draw() {
  background(0);
  drawRobot();
  
  
  for(int i=0;i<numRost;i++){
     drawRust(posx[i], posy[i]);
   }



}





void drawRobot() {
  pushStyle();
  fill(204, 229, 255);
  rect(mitteX-dicke/2, 100, dicke, 100); // head
  //Body
  rect(mitteX-10, 200, 20, 20);
  rect(mitteX-dicke/2, 220, dicke, 100); 
  //Arms
  rect(mitteX-dicke/2-armdicke, 220, armdicke, 130); // Left Arm
  rect(mitteX+dicke/2, 220, armdicke, 130); // Right Arm
  //Legs
  rect(mitteX-30-beindicke, 320, beindicke, 80); // Left Leg
  rect(mitteX+30, 320, beindicke, 80); // Right Leg
  popStyle();
}


// Externe Funktion mit Parametern:

void drawRust(float posx, float posy) {
  //Rost
  pushStyle();
  fill(153, 0, 0, 50);
  noStroke();
  pushMatrix();
  translate(posx, posy);
  rect(-1, 2, 5, 5);
  rect(-2, -3, 10, 10);
  rect(0, 0, 8, 8);
    rect(-5, 5, 5, 5);

 // ellipse(0, 0, 12, 12);
 // ellipse(5, 5, 10, 10);
  popMatrix();
  popStyle();
}