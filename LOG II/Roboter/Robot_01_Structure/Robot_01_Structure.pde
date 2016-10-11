/* 
*  Roboter 02
*  Einfache Variablen
*  HKB 16 Creative Coding, MF
*/ 

void setup(){
size(400, 400);
}

void draw(){
fill(255);
rect(100, 100, 200, 100); // head
fill(255);
ellipse(150, 135, 30, 30); // left eye
ellipse(250, 135, 30, 30); // right eye
rect(150, 170, 100, 20); //mouth

//Body
rect(190,200,20,20);
rect(110, 220, 180, 100); 

//Arms
rect(90, 220, 20, 130); // Left Arm
rect(290, 220, 20, 130); // Left Arm

//Legs
rect(150, 320, 20, 50); // Left Leg
rect(230, 320, 20, 50); // Right Leg


}