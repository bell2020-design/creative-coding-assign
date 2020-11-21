float posX;
float posY;
int leng = int(random (height));
float strleng= random(5, 10);

void setup() {
  size(800, 800);
  background(255);
  for (int i = 0; i<3; i++) {
    for (int j = 0; j< 3; j++) {
      drawShape(int(width/3*(i+0.5)), int(height/3*(j+0.5)), int(random(0, 200)));
    }
  }
}

void drawShape(int posX, int posY, int leng) {
  stroke(0);
  strokeWeight(strleng);
  fill(random(100, 133), random(100, 133), random(100, 133));
  rectMode(CENTER);
  rect(posX, posY, leng, leng);

  if (leng%2 == 0);{
    fill(255, 255, 255, 0);
    stroke(0);
    strokeWeight(strleng);
    rect(0, posY, 3*width, leng);
}
  if (leng%2 != 0);{
    fill(255, 255, 255, 0);
    stroke(0);
    strokeWeight(strleng-3);
    rect(posX, 0, leng, 3*height);
  }
}
