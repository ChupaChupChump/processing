class Paddle {
  float x;
  float y = height/2;
  float w = 18;
  float h = 100;

  Paddle(boolean left) {
    if (left) {
      x = w;
    } else {
      x = width - w;
    } 
  }
 
  void move(float steps) {
    y += steps;
    y = constrain( y, 0, height);
  }
 
  void show() {
   fill(255);
   rectMode(CENTER);
   rect(x, y, w, h);
  }
}
