// Owen Thibodeaux

class Cloaker {
  // Member Variables
  int x, y, w, h, speed, health;
  PImage f1;
  boolean alive;
  //Constructer
  Cloaker(int x, int y) {
    this.x = x;
    this.y = y;
    w = 100;
    h = 200;
    speed = 5;
    alive = false;
  }

  //Member Methods
  void display() {
    fill(0);
    rect(x, y, 50, 50);
  }

  void move() {
  }
}
