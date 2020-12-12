class P {
  float x, y;
  float vx, vy;
  float radius;
  float gravity = 0.1;
  float friction = 0.99;
  color c ;

  P(int xpos, int ypos, float velx, float vely, float r, color c_) {
    x = xpos;
    y = ypos;
    vx = velx;
    vy = vely;
    radius = r;
    c = c_;
  }

  void update() {
    vy *= friction;
    vx *= friction;
    vy = vy + gravity;
    x += vx;
    y += vy;
    limit();
  }

  void display() {
    fill(c);
    ellipse(x, y, radius*2, radius*2);
    fill(255,50);
    ellipse(x+random(radius/2),y-random(radius/2),radius,radius);
  }

  void limit() {
    if (y > height - radius) {
      vy = -vy;
      y = constrain(y, -height*10, height-radius);
    }
    if (((x < radius))|| (x> width - radius)) {
      vx= -vx;
      x = constrain(x, radius, width-radius);
    }
  }
}
