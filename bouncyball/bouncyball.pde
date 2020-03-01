float x = 400;
float y = 300;
float xSpeed = 10;
float ySpeed = 10;

void setup() {
 size(800, 600); 
 noStroke();
}

void draw() {
  x += xSpeed;
  if (x > width || x < 0) {
     xSpeed *= -1;
  }
  
  y += ySpeed;
  if (y > height || y < 0) {
   ySpeed *= -1; 
  }
  
 ellipse(x, y, 50, 50); //400 half of y axis and 300 half of x axis. 50 is size of circle
 fill(random(250), random(250), random(250));
}
