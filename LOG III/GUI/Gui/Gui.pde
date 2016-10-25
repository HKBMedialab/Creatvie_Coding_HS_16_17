import controlP5.*;

ControlP5 cp5;
int redvalue = 100;
int greenvalue = 100;
int bluevalue = 100;

void setup() {
  size(700, 400);
  noStroke();
  cp5 = new ControlP5(this);
  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'sliderValue' 
  cp5.addSlider("redvalue")
    .setPosition(100, 50)
    .setSize(200, 15)
    .setRange(0, 255);
    
    cp5.addSlider("greenvalue")
    .setPosition(100, 70)
    .setSize(200, 15)
    .setRange(0, 255)
    ;
    
       cp5.addSlider("bluevalue")
    .setPosition(100, 90)
    .setSize(200, 15)
    .setRange(0, 255)
    ;
    
    
}

void draw() {
  background(redvalue, greenvalue, bluevalue);
}