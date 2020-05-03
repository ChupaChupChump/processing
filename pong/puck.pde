class Puck {
  int x = width/2;
  int y = height/2;
  int xspeed = 5;
  int yspeed = 5;
  int r = 25;
  
  void update() {
   x = x + xspeed;
   y = y + yspeed;
  }
  
  void reset() {
    x = 400;
    y = 300;
  }
  
  void edges() {
    if (y < 0 || y > height) {
      yspeed *= -1;
    }
      if (x - r > width) {
      reset();
    }
     if ((y + r) <= y+150 && (y - r) >= y) {
     if (x - r <= 25) { xspeed *= -1;  println("Circle X: ");
     print(x);
     print("touched");
     }
     }
  }
  
  void show() {
   fill(255);
   ellipse(x, y, r, r);
  }
}
