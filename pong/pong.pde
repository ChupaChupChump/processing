Puck puck;
Paddle left;
Paddle right;

int section;
float tx = 80;
int ty = 200;


void setup() {

  size(800, 600); 
  puck = new Puck();
  left = new Paddle(true);
  right = new Paddle(false);
}


void draw() {

  background(0); 
  if (section == 0) {
    fill(255);
    textSize(45);
    text("Bad Pong Game by M.Charity", tx, ty);
    float cx = 60;
    float cy = 60;
    ellipse(400, 300, cx, cy);
     
  } if (mousePressed) {
      section = 1;
    }
  
   if (section == 1) {
    section = 1;
    background(0);
    puck.update();
    puck.edges();
    puck.show();
    left.show();
    right.show(); 
    }
}


void keyPressed() {
  if (key == 'w') {
    left.move(-5);
  } else if (key == 's') {
    left.move(5);
  }
  if (key == 'o') {
    right.move(-5);
  } else if (key == 'l') {
    right.move(5);
  }
}
