// Henry Baldwin

class Normal {
  // Member Variables
  int x, y, w, h, speed, health;
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
  }

  // Member Methods
  void display() {
    fill(0, 255, 190);
    rect(x, y, 50, 50);
  }

  void move() {
  }

  void attack() {
  }
}
