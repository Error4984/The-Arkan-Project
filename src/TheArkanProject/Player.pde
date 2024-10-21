// Henry Baldwin

class Player {
  // Member Variables
  int x, y, health, speed, attackSpeed, move;
  PImage n1;
  boolean alive, inrange;
  char weaponequip;

  // Constructor
  Player(int x, int y, char weaponequip) {
    this.x = x;
    this.y = y;
    attackSpeed = 0;
    health = 0;
    alive = false;
    this.weaponequip = weaponequip;
    speed = 5;
  }

  // Member Methods
  void display() {
    fill(0, 255, 190);
    rect(x, y, 100, 100);
  }

  void move() {
    if (keyPressed) {
      if (key == 'w' || key == 'W' ) {
        y = y-speed;
      } else if (key == 's' || key == 'S' ) {
        y = y+speed;
      } else if (key == 'a' || key == 'A' ) {
        x = x-speed;
      } else if (key == 'd' || key == 'D' ) {
        x = x+speed;
      }
    }
    //void attack() {
    //}
  }
}
