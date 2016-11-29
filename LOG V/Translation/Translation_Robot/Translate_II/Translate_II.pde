int xOffset=0;
color bodycolor=color(38, 38, 200);


void setup() {
  size(800, 400);
}


void draw() {
  background(255);
  drawRobotHead();
}

void drawRobotHead() {
  noStroke();
  fill(bodycolor);
  rect(20, 20, 38, 30); // head
  fill(255);
  ellipse(30+xOffset, 32, 12, 12); // left eye
  ellipse(47+xOffset, 32, 12, 12); // right eye
}