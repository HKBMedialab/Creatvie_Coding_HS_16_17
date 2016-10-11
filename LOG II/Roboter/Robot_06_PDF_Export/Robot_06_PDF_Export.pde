/* 
 *  Roboter 06
 *  Einfache Variablen
 *  HKB 16 Creative Coding, MF
 */

import processing.pdf.*;

int dicke=200;
int mitteX;
int mitteY;
int armdicke=20;
int beindicke=20;

//Should we export the drawing?
boolean saveFrame=false;


void setup() {
  size(500, 500);
  mitteX=width/2;
  mitteY=height/2;
}

void draw() {
  
   // am Anfang des Frames das PDF beginnen
  
  if(saveFrame==true){
     println("saving Frame to robot"+frameCount+".pdf");
     beginRecord(PDF, "robot_" + frameCount + ".pdf");
  }
  
  
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
  
   // Am Ende des Frames das PDF abschliessen
  if(saveFrame==true){
     endRecord();
    saveFrame=false;
  }
  
  
}


void mouseMoved() {
  dicke=mouseX;
  armdicke=mouseY/5;
  beindicke=dicke/10;
}


void keyPressed(){
  println(key);
  if(key=='s'){
    saveFrame=true;
  }
}