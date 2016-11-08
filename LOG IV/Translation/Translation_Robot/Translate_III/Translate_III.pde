
color bodycolor=color(38, 38, 200);


void setup() {
  size(800, 400);
}


void draw() {
  background(255);
  drawRobotHead();  
  pushMatrix();

  for (int i=0; i <10; i+=1) {
    translate(100, 0);
    drawRobotHead();
  }
  popMatrix();
}

void drawRobotHead() {
  rect(0, 0, 10, 10);
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
}