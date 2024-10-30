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
    sp1 = loadImage("EliWSpawner.png");
    sp1.resize(50, 50);
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(sp1, x, y);
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
