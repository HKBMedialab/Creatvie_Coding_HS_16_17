/* 
 *  Roboter 05
 *  Einfache Variablen
 *  HKB 16 Creative Coding, MF
 */


int dicke=200;
int mitteX;
int mitteY;
int armdicke=20;
int beindicke=20;


void setup() {
  size(500, 500);
  mitteX=width/2;
  mitteY=height/2;
}

void draw() {
  background(0);
  fill(255);
  rect(mitteX-dicke/2, 100, dicke, 100); // head

  //Body
  strokeWeight(1);
  rect(mitteX-armdicke/2, 200, armdicke, 20);
  rect(mitteX-dicke/2, 220, dicke, 100); 

  //Arms
  rect(mitteX-dicke/2-armdicke, 220, armdicke, 130); // Left Arm
  rect(mitteX+dicke/2, 220, armdicke, 130); // Right Arm

  //Legs
  rect(mitteX-beindicke-beindicke, 320, beindicke, 80); // Left Leg
  rect(mitteX+beindicke, 320, beindicke, 80); // Right Leg
}


void mouseMoved() {
  dicke=mouseX;
  armdicke=mouseY/5;
  beindicke=dicke/10;
}