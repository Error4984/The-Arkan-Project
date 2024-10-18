// Henry Baldwin

class Player {
  // Member Variables
  int x, y, health, attackspeed;
  PImage n1;
  boolean alive, inrange;
  char weaponequip;

  // Constructor
  Player(int x, int y, char weaponequip) {
    this.x = x;
    this.y = y;
    attackspeed = 0;
    health = 0;
    alive = false;
    this.weaponequip = weaponequip;
  }

  // Member Methods
  void display() {
    fill(0, 255, 190);
    rect(x, y, 100, 100);
  }

  void move() {
  }

  void attack() {
  }
}
