// James Sturm

class Heavy {
  // Member Variables
  int x, y, w, h, speed, health, attackrate, attackdamage, m;
  PImage h1;
  boolean alive;


  // Constructor
  Heavy(int x, int y) {
    this.x = x;
    this.y = y;
    w = 150;
    h = 150;
    speed = 5;
    health = 350;
    attackrate = 3;
    attackdamage = 50;
    alive = false;
    h1 = loadImage("JamesHeavy.png");
    h1.resize(150, 150);
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(h1, x, y);
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
