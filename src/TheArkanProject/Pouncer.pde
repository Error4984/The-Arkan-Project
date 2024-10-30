// Henry Baldwin

class Pouncer {
  // Member Variables
  int x, y, w, h, speed, health;
  PImage p1;
  boolean alive, inrange;

  // Constructor
  Pouncer(int x, int y) {
    this.x = x;
    this.y = y;
    w = 0;
    h = 0;
    speed = 5;
    health = 0;
    alive = false;
    inrange = false;
    p1 = loadImage("OwenTPouncer.png");
    p1.resize(50, 50);
  }

  // Member Methods
  void display() {

    imageMode(CENTER);
    image(p1, x, y);
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

  void pounce() {
  }
}
