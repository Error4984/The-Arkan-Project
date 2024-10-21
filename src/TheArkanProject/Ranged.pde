// Henry Baldwin

class Ranged {
  // Member Variables
  int x, y, w, h, speed, health, m;
  PImage r1;
  boolean alive, inrange;

  // Constructor
  Ranged(int x, int y) {
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
    fill(155, 15, 95);
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

  void projfire() {
  }
}
