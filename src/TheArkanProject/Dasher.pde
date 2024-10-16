class Dasher {  // Member Variables
  int x, y, w, h, speed, health, dashSpeed, attackRate;
  PImage f1;
    boolean alive;
    //Constructer
    Dasher() {
    x = 0;
    y = 0;
    w = 100;
    h = 200;
    attackRate = 10;
    dashSpeed = 70;
    speed = 17;
    f1 = loadImage("");
    alive = false;
  }

  //Member Methods
  void display() {
  }

  void move() {
  }
}
