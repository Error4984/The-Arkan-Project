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
  }

  // Member Methods
  void display() {
    fill(0, 255, 0);
    rect(x, y, 50, 50);
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
