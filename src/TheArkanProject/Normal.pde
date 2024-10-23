// Henry Baldwin

class Normal {
  // Member Variables
  int x, y, w, h, speed, health, m;
  PImage n1;
  boolean alive, inrange;


  // Constructor
  Normal(int x, int y) {
    this.x = x;
    this.y = y;
    w = 0;
    h = 0;
    speed = 0;
    health = 0;
    alive = false;
    speed = 5;
    n1 = loadImage("Normal1.png");
    n1.resize(50, 50);
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(n1,x, y);
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
