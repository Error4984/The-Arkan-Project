// Eli Wright

class Tunneler {
  // Member Variables
  int x, y, w, h, speed, health, attackdamage, attackrate;
  PImage tnl1;
  boolean alive;

  // Constructor
  Tunneler(int x, int y) {
    this.x = x;
    this.y = y;
    w = 0;
    h = 0;
    speed = 0;
    health = 0;
    attackdamage = 0;
    attackrate = 0;
    alive = false;
  }

  // Member Methods
  void display() {
    fill(255, 0, 0);
    rect(x, y, 50, 50);
  }

  void move() {
  }

  void attack() {
  }
}
