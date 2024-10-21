// Eli Wright

class Spawner {
  // Member Variables
  int x, y, w, h, speed, health, spawnrate, m;
  PImage sp1;
  boolean alive;

  // Constructor
  Spawner(int x, int y) {
    this.x = x;
    this.y = y;
    w = 0;
    h = 0;
    speed = 5;
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
