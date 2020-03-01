class Puck {
  float x = width/2;
  float y = height/2;
  float xspeed = random(10);
  float yspeed = random(10);
  int r = 25;
  
  void update() {
   x = x + xspeed;
   y = y + yspeed;
  }
  
  void reset() {
    x = width/2;
    y = height/2;
  }
  
  void edges() {
    if (y < 0 || y > height) {
      yspeed *= -1;
    }
      if (x - r > width) {
      reset();
    }
  }
  
  void show() {
   fill(255);
   ellipse(x, y, r, r);
  }
}
