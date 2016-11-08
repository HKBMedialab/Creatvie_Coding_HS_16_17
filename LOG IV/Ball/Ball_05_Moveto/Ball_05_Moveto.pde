
// Wert, der in jedem Loop dazugezählt wird. 
// km/h ist bei uns Pixel/Frame...
PVector velocity=new PVector(3, 1);
PVector position =new PVector(0,0);
PVector target =new PVector(0,0);

int maxspeed=5;


void setup() {
  size(400, 400);
  smooth();
  
  position.set(width/2,height/2);
  target.set(width/2,height/2);
    println(target);

}

void draw() {
  background(255);
  move();
  display();
}

void move() {
  //-> bewege den Ball
  
  PVector dist=new PVector();
  dist.set(target);
 dist.sub(position);
  dist.limit(maxspeed);
  position.add(dist);
}



void mouseClicked() {
  target.set(mouseX,mouseY);
}


void display() {
  //-> zeichne den Ball
  fill(255, 0, 0);
  pushMatrix();
  translate(position.x,position.y);
  ellipse(0,0, 30, 30);
  popMatrix();
};