int angle=0;

color bodycolor=color(38, 38, 200);
color trianglecolor=color(250, 100, 100);


void setup()
{
  size(400, 400);
  background(255);
  smooth();
  fill(192);
  noStroke();
}


void draw() {
  background(255);

  translate(50, 50);
  drawRobot();
  angle-=10;
}



void drawRobot() {

  noStroke();
  fill(bodycolor);
  rect(20, 20, 38, 30); // head
  fill(255);
  ellipse(30, 32, 12, 12); // left eye
  ellipse(47, 32, 12, 12); // right eye

  //----
  stroke(0);
  line(39, 0, 39, 20); //antenna
  fill(255, 0, 0);
  ellipse(39, 3, 6, 6); // antenna

  noStroke();
  fill(bodycolor);
  rect(14, 52, 50, 50); // body
  fill(trianglecolor);
  triangle(39, 62, 24, 92, 54, 92);//body

  fill(bodycolor);



  rect(0, 52, 12, 37); // left arm

  pushMatrix();
  translate(66, 52);
  rotate(radians(angle));
  rect(0,0, 12, 37);
   // rect(66, 52, 12, 37); // right arm

  popMatrix();




  rect(22, 104, 16, 50); // left leg
  rect(40, 104, 16, 50); // right leg
}