// James Sturm

class Healer {
  // Member Variables
  int x, y, w, h, speed, health, healrate, attackrate, attackdamage, m;
  PImage f1;
  boolean alive;


  // Constructor
  Healer(int x, int y) {
    this.x = x;
    this.y = y;
    w = 50;
    h = 50;
    speed = 3;
    health = 100;
    healrate = 10;
    attackrate = 3;
    attackdamage = 20;
    alive = false;
  }

  // Member Methods
  void display() {
    fill(90, 160, 15);
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
}
