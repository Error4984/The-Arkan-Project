// Owen Thibodeaux

class Cloaker {
  // Member Variables
  int x, y, w, h, health, m;
  PImage c1;
  boolean alive;
  float speed;

  //Constructer
  Cloaker(int x, int y) {
    x = int(random(width));
    y = height+5;
    w = 100;
    h = 200;
    speed = (5);
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
    y+= speed;
  }

  boolean defeated() {
    if (y > height + r4) {
      return true;
    } else {
      return false;
    }
  }
}
