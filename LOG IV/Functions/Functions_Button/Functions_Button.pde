boolean switchOn=false;
void setup() {
  size(200, 200);
}

void draw() {
  if(switchOn){
  background(255);
  }else{
      background(0);

  }
 
 switchOn=button(10, 10, 20, 20);
  
}



boolean button(int posX, int posY, int myWidth, int myHeight) {
boolean click=false;
boolean rollover=false;
  if (mouseX>posX && mouseX <posX+myWidth && mouseY>posY && mouseY<posY+myHeight) {
    rollover=true;
  } else {
    rollover=false;
  }

  if (rollover && mousePressed) {
    click=true;
  } else {
    click=false;
  }


  if (rollover) {
    fill(255, 0, 0);
  } else {
    fill(255);
  };

  if (click) {
    fill(0, 0, 255);
  };

  rect(posX, posY, myWidth, myHeight);
  return click;
}