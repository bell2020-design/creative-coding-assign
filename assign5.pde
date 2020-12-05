//图像处理调值
PImage img;
Button1[] bt;
float btWidth = 50;
float btHeight = 20;
color brushColor = 255;

void setup() {
  size(900, 450);
  background(255);
  img = loadImage("gate.png");
}

void draw() {
  image(img, 250, 20);
  bt = new Button1(50, 50+btHeight+10，btWidth, btHeight, brushColor);
  float l = map(mouseX, 0, width, 0, 20);
  // BLUR, POSTERIZE, THRESHOLD, INVERT, GRAY, ERODE, DILATE
  filter(BLUR, l);
}
