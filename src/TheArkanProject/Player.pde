// Henry Baldwin

class Player {
  // Member Variables
  int x, y, health, speed, attackSpeed, move;
  PImage p1;
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
    p1 = loadImage("HenryPlayer2.png");
    p1.resize(100, 100);
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(p1,x, y);
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
