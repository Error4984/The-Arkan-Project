// Eli Wright

class Tunneler {
  // Member Variables
  int x, y, w, h, speed, health, attackdamage, attackrate, m;
  PImage tnl1;
  boolean alive;

  // Constructor
  Tunneler(int x, int y) {
    this.x = x;
    this.y = y;
    w = 0;
    h = 0;
    speed = 5;
    health = 0;
    attackdamage = 0;
    attackrate = 0;
    alive = false;
  }

  // Member Methods
  void display() {
    fill(255, 0, 0);
    rectMode(CENTER);
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
