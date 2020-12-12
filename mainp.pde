int num =80;
P[] p= new P [num];
int x = width;
int y = height;

void setup() {
  size(1200, 600);
  noStroke();
  smooth();
  for (int i =0; i<p.length; i++) {
    float velX = random(-10, 10);
    float velY = -1;
    p[i] = new P(x, y, velX, velY, 5, color(19, 245, 245, 30));
  }
}

void draw() {
  fill(255, 100);
  rect(0, 0, width, height);
  //fill(255, 60);
    for (int i = 0; i < p.length; i++) {
      p[i].update();
      p[i].display();
      //p[i].regenerate();
    }
  }
