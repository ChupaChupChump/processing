float snakex = 400;
float snakey = 300;
float sxSpeed = 10;
float sySpeed = 10;

void setup() {
  size(800, 600);
  noStroke();
}

void draw() {  
  //  snakex += sxSpeed;
  if (snakex > width || snakex < 0) {
    sxSpeed *= -1;
  }

  //  snakey += sySpeed;
  if (snakey > width || snakey < 0) {
    sySpeed *= -1;
  }

  rect(snakex, snakey, 10, 80);
}

void keyPressed()
{
  // If the key is between 'A'(65) to 'Z' and 'a' to 'z'(122)
  if ((key >= 'A' && key <= 'Z') || (key >= 'a' && key <= 'z')) {
    int keyIndex = -1;
    if (key <= 'd') {
      keyIndex = key-'d';
      snakex += sxSpeed;
      if (snakex > width || snakex < 0) {
        sxSpeed *= -1;
      }
    }
    if (key <= 'a') {
      keyIndex = key-'a';
      snakex += sxSpeed;
      if (snakex > width || snakex < 0) {
        sxSpeed *= -1;
  }
}
  }
}
