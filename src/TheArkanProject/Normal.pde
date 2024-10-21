// Henry Baldwin

class Normal {
  // Member Variables
  int x, y, w, h, speed, health, m;
  PImage n1;
  boolean alive, inrange;

  // Constructor
  Normal(int x, int y) {
    this.x = x;
    this.y = y;
    w = 0;
    h = 0;
    speed = 0;
    health = 0;
    alive = false;
    speed = 5;
  }

  // Member Methods
  void display() {
    fill(0, 255, 190);
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

  void attack() {
  }
}
