
int xOffset=0;

color bodycolor=color(38, 38, 200);
color trianglecolor=color(250, 100, 100);


void setup() {
  size(800, 400);
}


void draw() {
      background(255);

  for (int i=0; i <800; i+=100) {
    xOffset=i;

    noStroke();
    fill(bodycolor);
    rect(20+xOffset, 20, 38, 30); // head
    fill(255);
    ellipse(30+xOffset, 32, 12, 12); // left eye
    ellipse(47+xOffset, 32, 12, 12); // right eye

    //----
    stroke(0);
    line(39+xOffset, 0, 39+xOffset, 20); //antenna
    fill(255, 0, 0);
    ellipse(39+xOffset, 3, 6, 6); // antenna

    noStroke();
    fill(bodycolor);
    rect(14+xOffset, 52, 50, 50); // body
    fill(trianglecolor);
    triangle(39+xOffset, 62, 24+xOffset, 92, 54+xOffset, 92);//body

    fill(bodycolor);
    rect(0+xOffset, 52, 12, 37); // left arm
    rect(66+xOffset, 52, 12, 37); // right arm

    rect(22+xOffset, 104, 16, 50); // left leg
    rect(40+xOffset, 104, 16, 50); // right leg
  }
}