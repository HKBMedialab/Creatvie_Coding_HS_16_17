/* 
 *  Roboter 10
 
 *Loopen mit for(…){}
 *  HKB 16 Creative Coding, MF
 */


int dicke=200;
int mitteX;
int mitteY;
int armdicke=20;
int beindicke=20;

int anzahlAntennen=30;


void setup() {
  size(500, 500);
  mitteX=width/2;
  mitteY=height/2;
}

void draw() {
  background(0);
  stroke(0);

  fill(255);
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

  stroke(255);
//  line(mitteX, 50, mitteX, 100);


  for (int i=0; i<anzahlAntennen; i++) { 
    float startx=mitteX-dicke/2;
    float abstand=dicke/float(anzahlAntennen-1);
    float xpos=startx+i*abstand;
    line(xpos, 50, xpos, 100);
  }
  
}