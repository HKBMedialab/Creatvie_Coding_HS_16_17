

void setup(){
size(400, 400);
}

void draw(){
fill(0,0,200);
rect(100, 100, 200, 100); // head
fill(255);
ellipse(150, 135, 30, 30); // left eye
ellipse(250, 135, 30, 30); // right eye

rect(150, 170, 100, 20); 


strokeWeight(3);
line(200, 60, 200, 100); //antenna
fill(255,0,0);
ellipse(200, 60, 10, 10); // antenna

//Body
fill(0,0,200);
strokeWeight(1);
rect(190,200,20,20);
rect(110, 220, 180, 100); 
fill(200,100,100);
rect(150, 230, 50, 50); 
fill(255,0,0);
ellipse(210, 235, 10, 10); 
fill(0,255,0);
ellipse(210, 250, 10, 10); 


//Arms
fill(0,0,200);
rect(90, 220, 20, 130); // Left Arm
rect(290, 220, 20, 130); // Left Arm

//Legs
rect(150, 320, 20, 50); // Left Leg
rect(230, 320, 20, 50); // Right Leg


}