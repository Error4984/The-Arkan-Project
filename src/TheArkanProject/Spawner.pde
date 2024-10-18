// Eli Wright

class Spawner {
  // Member Variables
  int x, y, w, h, speed, health, spawnrate;
  PImage sp1;
  boolean alive;

  // Constructor
  Spawner(int x, int y) {
    this.x = x;
    this.y = y;
    w = 0;
    h = 0;
    speed = 0;
    health = 0;
    spawnrate = 5;
    alive = false;
  }

  // Member Methods
  void display() {
    fill(255, 155, 90);
    rect(x, y, 50, 50);
  }

  void move() {
  }

  void attack() {
  }
}
