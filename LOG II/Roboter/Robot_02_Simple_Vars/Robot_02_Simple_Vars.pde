/* 
*  Roboter 02
*  Einfache Variablen
*  HKB 16 Creative Coding, MF
*/ 
int dicke=200;
int mitteX;
int mitteY;


void setup(){
 size(500,500);
   mitteX=width/2;
   mitteY=height/2;  
}

void draw(){
fill(255);
rect(mitteX-dicke/2, 100, dicke, 100); // head

//Body
strokeWeight(1);
rect(mitteX-10,200,20,20);
rect(mitteX-dicke/2, 220, dicke, 100); 

//Arms
rect(mitteX-dicke/2-20, 220, 20, 130); // Left Arm
rect(mitteX+dicke/2, 220, 20, 130); // Right Arm

//Legs
rect(mitteX-30-20, 320, 20, 80); // Left Leg
rect(mitteX+30, 320, 20, 80); // Right Leg


}