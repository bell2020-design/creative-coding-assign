//int sw;

//void setup(){
//  size(600,900);
//  background(255,252,243);
//  }

//void draw(){
//  fill(30,30,30,5);
//  strokeWeight(sw);
//  stroke(255);
//  ellipse(width*0.75,height/2,100,100);
//}

int sw;
int n = int(random(30));
float m = random(0, 3);
float l = random(0, 3);
int t = 1;

void setup() {
  size(900, 900);
  background(255, 252, 243);
  frameRate(1);
}

void draw() {
  //if (mousePressed&&  (mouseButton == LEFT))
  //{
  //  while (t<=5)
  //  {
  //    fill(30, 30, 30, l*30);
  //    strokeWeight(sw);
  //    stroke(255);
  //    //ellipse(l*mouseX,m*mouseY,n,n);
  //    ellipse(random(mouseX-250, mouseX+250), random(mouseY-50, mouseY+100), n, n);
  //    n = int(random(10, 100));
  //    m = random(0, 3);
  //    l = random(0, 3);
  //    t = t + 1;
  //  }
  //}
  //t = 1;
}

void mousePressed() {
  if (mouseButton == LEFT) {
    while (t<=5)
    {
      fill(30, 30, 30, l*30);
      strokeWeight(sw);
      stroke(255);
      //ellipse(l*mouseX,m*mouseY,n,n);
      ellipse(random(mouseX-250, mouseX+250), random(mouseY-50, mouseY+100), n, n);
      n = int(random(10, 100));
      m = random(0, 3);
      l = random(0, 3);
      t = t + 1;
    }
  }
  t = 1;
}
