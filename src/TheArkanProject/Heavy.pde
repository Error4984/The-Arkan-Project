// James Sturm

class Heavy {
  // Member Variables
  int x, y, w, h, speed, health, attackrate, attackdamage;
  PImage f1;
  boolean alive;


  // Constructor
  Heavy(int x, int y) {
    this.x = x;
    this.y = y;
    w = 50;
    h = 50;
    speed = 5;
    health = 350;
    attackrate = 3;
    attackdamage = 50;
    alive = false;
  }

  // Member Methods
  void display() {
    fill(0, 0, 190);
    rect(x, y, 50, 50);
  }


  void move() {
  }
}
