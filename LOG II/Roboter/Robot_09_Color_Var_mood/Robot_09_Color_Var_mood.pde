/* 
 *  Roboter 08
 
 *  HSV (Hue Saturation Value) == HSB (Hue Saturation Blackness)
 *  https://en.wikipedia.org/wiki/HSL_and_HSV
 
 *  HKB 16 Creative Coding, MF
 */


int dicke=200;
int mitteX;
int mitteY;
int armdicke=20;
int beindicke=20;


float mood=0;
float intensity=255;


void setup() {
  size(500, 500);
  mitteX=width/2;
  mitteY=height/2;
}

void draw() {
  background(0);
      stroke(0);

  colorMode(HSB);
  fill(mood, intensity, 255);
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
  
    stroke(150,150,255);

  
  
}

void mouseMoved() {
  mood=map(mouseY, 500, 0, 0, 255);
  intensity=map(mouseX, 500, 0, 0, 255);
}