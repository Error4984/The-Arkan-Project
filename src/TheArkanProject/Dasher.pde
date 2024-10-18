// Owen Thibodeaux

class Dasher {  // Member Variables
  int x, y, w, h, speed, health, dashSpeed, attackRate;
  PImage f1;
  boolean alive;
  //Constructer
  Dasher(int x, int y) {
    this.x = x;
    this.y = y;
    w = 100;
    h = 200;
    attackRate = 10;
    dashSpeed = 70;
    health = 70;
    speed = 17;
    alive = false;
  }

  //Member Methods
  void display() {
    fill(50, 10, 100);
    rect(x, y, 50, 50);
  }

  void move() {
  }
}
