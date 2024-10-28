// Owen Thibodeaux

class Dasher {  // Member Variables
  int x, y, w, h, speed, health, dashSpeed, attackRate, m;
  PImage d1;
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
    d1 = loadImage("OwenTDasher.png");
    d1.resize(50, 50);
  }

  //Member Methods
  void display() {
    imageMode(CENTER);
    image(d1, x, y);
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
