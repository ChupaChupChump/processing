Puck puck;

Paddle left;
Paddle right;

void setup() {
 size(800, 600); 
 puck = new Puck();
 left = new Paddle(true);
 right = new Paddle(false);
}

void paddleCheck(Paddle p) {
  if (puck.x = p.w || p.h ) {
    puck.xspeed = puck.xspeed = -1;
  }
}

void draw() {
 background(0); 
 
 puck.update();
 puck.edges();
 puck.show();
 left.show();
 right.show();
}

void keyPressed() {
  if (key == 'a') {
    left.move(-10);
  } else if (key == 'z') {
    left.move(10);
  }
}
    
    
    
    
