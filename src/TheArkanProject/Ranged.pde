// Henry Baldwin

class Ranged {
  // Member Variables
  int x, y, w, h, speed, health;
  PImage r1;
  boolean alive, inrange;

  // Constructor
  Ranged(int x, int y) {
    this.x = x;
    this.y = y;
    w = 0;
    h = 0;
    speed = 0;
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
  }

  void projfire() {
  }
}
