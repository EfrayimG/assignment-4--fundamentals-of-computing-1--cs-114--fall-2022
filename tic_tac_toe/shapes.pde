public void drawBoard() {
  line(height/3, 0, height/3, height);
  line(height/1.5, 0, height/1.5, height);
  line(0, height/3, height, height/3);
  line(0, height/1.5, height, height/1.5);
}


public void drawX(int x, int y) {
  int a = 0;
  int b = (height/3);
  int c = (height*2/3);
  int d = height;

  if (x==0 && y==0) {
    line(a, a, b, b);
    line(a, b, b, a);
  }
  if (x==1 && y==0) {
    line(b, a, c, b);
    line(c, a, b, b);
  }
  if (x==2 && y==0) {
    line(c, a, d, b);
    line(d, a, c, b);
  }
  if (x==0 && y==1) {
    line(a, b, b, c);
    line(b, b, a, c);
  }
  if (x==1 && y==1) {
    line(b, b, c, c);
    line(b, c, c, b);
  }
  if (x==2 && y==1) {
    line(c, b, d, c);
    line(d, b, c, c);
  }
  if (x==0 && y==2) {
    line(a, c, b, d);
    line(b, c, a, d);
  }
  if (x==1 && y==2) {
    line(b, c, c, d);
    line(c, c, b, d);
  }
  if (x==2 && y==2) {
    line(c, c, d, d);
    line(d, c, c, d);
  }
}



public void drawO(int x, int y) {
  int a = (height/6);
  int b = (height/2);
  int c = (height*5/6);
  int d = (height/3);

  if (x==0 && y==0) {
    circle(a, a, d);
  }
  if (x==1 && y==0) {
    circle(b, a, d);
  }
  if (x==2 && y==0) {
    circle(c, a, d);
  }
  if (x==0 && y==1) {
    circle(a, b, d);
  }
  if (x==1 && y==1) {
    circle(b, b, d);
  }
  if (x==2 && y==1) {
    circle(c, b, d);
  }
  if (x==0 && y==2) {
    circle(a, c, d);
  }
  if (x==1 && y==2) {
    circle(b, c, d);
  }
  if (x==2 && y==2) {
    circle(c, c, d);
  }
}
