
// Wert, der in jedem Loop dazugezählt wird. 
// km/h ist bei uns Pixel/Frame...
PVector velocity=new PVector(0, 0);
PVector position =new PVector(0, 0);
PVector target =new PVector(0, 0);
float maxspeed=5;
float drag=0.99;
float speedamount=0.5;

void setup() {
  size(400, 400);
  smooth();

  position.set(width/2, height/2);
  target.set(width/2, height/2);
  println(target);
}

void draw() {
  background(255);
  move();
  display();
  wrap();
}

void move() {
  velocity.mult(drag);
  velocity.limit(maxspeed);
  position.add(velocity);
}


void wrap() {
  if (position.x >width) {
    position.x=0;
  }
  if (position.x <0) {
    position.x=width;
  }
   if (position.y < 0) {
    position.y=height;
  }
   if (position.y > height) {
    position.y=0;
  }
  
  
}


void display() {
  //-> zeichne den Ball
  fill(255, 0, 0);
  pushMatrix();
  translate(position.x, position.y);
  ellipse(0, 0, 30, 30);
  popMatrix();
};




void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      velocity.add(0, -speedamount);
    } else if (keyCode == DOWN) {
      velocity.add(0, speedamount);
    } else if (keyCode == LEFT) {
      velocity.add(-speedamount, 0);
    } else if (keyCode == RIGHT) {
      velocity.add(speedamount, 0);
    }
  }
}