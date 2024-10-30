// Henry Baldwin
// InfoPanel Class to display game information
class InfoPanel {
  int health;
  int ammo;
  int wood;
  int metal;
  int brick;
  int damage;

  InfoPanel(int initialHealth) {

    health = initialHealth;
    ammo = 12;
    brick = 3;
    wood = 5;
    metal = 0;
  }

  // Call this function to update health
  void updateHealth(int change) {
    health += change;
    health = constrain(health, 0, 100); // Health capped at 100
  }

  // Call this function to update ammo
  void updateAmmo(int ammoChange) {
    ammo += ammoChange;
  }
  // Call this function to update wood
  void updateWood(int woodChange) {
    wood += woodChange;
  }
  // Call this function to update metal
  void updateMetal(int metalChange) {
    metal += metalChange;
  }
  // Call this function to update brick
  void updateBrick(int brickChange) {
    brick += brickChange;
  }
// Call this function to update damage
  void updateDamage(int damageChange) {
    damage += damageChange;
  }

  // Display the panel with information
  void display() {
    // Draw background for info panel
    fill(50, 50, 50, 150); // Semi-transparent background
    rect(10, 10, 200, 100);

    // Set text properties
    fill(255);
    textSize(12);

    // Display the health
    text("Health: " + health, 20, 50);

    //Display the ammo
    text("Ammo:" + ammo, 20, 60);

    //Display the brick
    text("Brick:" + brick, 20, 70);

    //Display the wood
    text("Wood:" + wood, 20, 90);

    //Display the metal
    text("Metal:" + metal, 20, 100);
  }
}
