//先写后半段，怎么把数字音符变为规律图形；再在下次课上写前半段，怎么把数字从图片提取 image edge detection（要用到函数求导）

int row = 12;
int col = 6;
int cellSize;
int cellSizev;
int cellStroke;
char back = 'b'; //背景数字
String[] notation ={"3 52  1 54  3 33456  5  3 52  1 54  3 556711"};//乐谱，《雪绒花》的第一段

void setup() {
  size(1200, 400);
  background(65, 68, 181);
  cellSize = width/row;
  cellSizev = height/(col+2);
  cellStroke = cellSize/50;
  drawString();
  drawTrans();
}

void reset() {
  background(0);
  drawString();
  drawTrans();
}

void draw() {
}

void drawString() {
  for (int i = 0; i < row; i ++) {
    for (int j = 0; j < col; j ++) {
      pushMatrix();
      translate(i*cellSize+cellSize/2, j*cellSizev+cellSizev/2);
      //rotate(PI/2*floor(random(4)));
      //int choice = floor(random(3));
      println(back);
      switch(back) {
      case 'b':
        shapeb();
        break;
      }
      popMatrix();
    }
  }
  //画弦
  stroke(226, 228, 227);
  strokeWeight(2);
  line(0,cellSizev/2,width,cellSizev/2);
  line(0,cellSizev/2*3,width,cellSizev/2*3);
  line(0,cellSizev/2*5,width,cellSizev/2*5);
  line(0,cellSizev/2*7,width,cellSizev/2*7);
  line(0,cellSizev/2*9,width,cellSizev/2*9);
  line(0,cellSizev/2*11,width,cellSizev/2*11);
  //画吉他分格线
  strokeCap(SQUARE);
  stroke(251, 115, 53);
  strokeWeight(12);
  line(400, 0, 400, 300);
  line(800, 0, 800, 300);
  //打谱子
  String n = "“3 52  1 54  3 33456  5  3 52  1 54  3 556711”";
  textSize(30);
  text(n,250,360);
}

void shapeb() {
  strokeWeight(2);
  stroke(226, 228, 227,10);
  strokeCap(ROUND);
  fill(254, 172, 133);
  rectMode(CENTER);
  rect(0, 0, cellSize, cellSizev);
}


//第二步，输入数据，转化
char note;

void drawTrans() {

  println(notation.length);

  for (int i = 0; i < notation.length; i ++) {
    String subSetOfNotation = notation[i];
    for (int j = 0; j < subSetOfNotation.length(); j ++) {
      char c = subSetOfNotation.charAt(j);
      println(c);
      pushMatrix();
      switch(c) {
      case '1':
        shape1();
        break;
      case '2':
        shape2();
        break;
      case '3':
        shape3();
        break;
      case '4':
        shape4();
        break;
      case '5':
        shape5();
        break;
      case '6':
        shape6();
        break;        
      case '7':
        shape7();
        break;
      case '0':
        shape0();
        break;
      }
      popMatrix();
    }
  }
}


void shape1() {
  strokeWeight(0);
  fill(226, 228, 227, 90);
  rectMode(CORNER);
  rect(0,cellSizev, cellSize,cellSizev);
}

void shape2() {
  strokeWeight(0);
  fill(226, 228, 227, 90);
  rectMode(CORNER);
  rect(cellSize*4,cellSizev*4, cellSize,cellSizev);
  //试图加和弦但是不好看
  //fill(255,255,255,50);
  //rect(cellSize,cellSizev*37/6-5,cellSize,cellSizev/2);
  //rect(cellSize,cellSizev*40/6,cellSize,cellSizev/2);
}

void shape3() {
  strokeWeight(0);
  fill(255);
  rectMode(CORNER);
  rect(cellSize*7,cellSizev*4, cellSize,cellSizev);
}

void shape4() {
  strokeWeight(0);
  fill(226, 228, 227, 90);
  rectMode(CORNER);
  rect(cellSize*2,cellSizev*3, cellSize,cellSizev);
}

void shape5() {
  strokeWeight(0);
  fill(226, 228, 227, 90);
  rectMode(CORNER);
  rect(cellSize*4,cellSizev*3, cellSize,cellSizev);
}

void shape6() {
  strokeWeight(0);
  fill(226, 228, 227, 90);
  rectMode(CORNER);
  rect(cellSize*6,cellSizev*3, cellSize,cellSizev);
}

void shape7() {
  strokeWeight(0);
  fill(226, 228, 227, 90);
  rectMode(CORNER);
  rect(cellSize*8,cellSizev*3, cellSize,cellSizev);
}

void shape0() {
//准备画一条线
}


//void keyPressed() {
//  if (key == 'r') {
//    reset();
//  }
//}
