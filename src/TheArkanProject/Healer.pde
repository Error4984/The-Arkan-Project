// James Sturm

class Healer {
  // Member Variables
  int x, y, w, h, speed, health, healrate, attackrate, attackdamage;
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
  }
}
