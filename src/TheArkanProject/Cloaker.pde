// Owen Thibodeaux

class Cloaker {
  // Member Variables
  int x, y, w, h, speed, health, m;
  PImage c1;
  boolean alive;
  //Constructer
  Cloaker(int x, int y) {
    this.x = x;
    this.y = y;
    w = 100;
    h = 200;
    speed = 5;
    alive = false;
    c1 = loadImage("OwenTCloaker.png");
    c1.resize(50, 50);
  }

  //Member Methods
  void display() {
    imageMode(CENTER);
    image(c1, x, y);
  }

  void move() {
    int m = int(random(0, 4));
    if (m == 0) {
      x = x+speed;
    }
    if (m == 1) {
      x = x-speed;
    }
    if (m == 2) {
      y = y+speed;
    }
    if (m == 3) {
      y = y-speed;
    }
  }
}
