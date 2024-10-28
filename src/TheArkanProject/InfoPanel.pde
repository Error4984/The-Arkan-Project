// InfoPanel Class to display game information
class InfoPanel {
  int score;
  int health;
  int ammo;
  int wood;
  int metal;
  int brick;
  float timer;

  InfoPanel(int initialScore, int initialHealth) {
    score = initialScore;
    health = initialHealth;
    timer = 0;
    ammo = 12;
    brick = 3;
    wood = 5;
    metal = 0;
  }

  // Call this function to update score
  void updateScore(int points) {
    score += points;
  }

  // Call this function to update health
  void updateHealth(int change) {
    health += change;
    health = constrain(health, 0, 100); // Health capped at 100
  }
  // Call this function to update the timer
  void updateTimer(float deltaTime) {
    timer += deltaTime;
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


  // Display the panel with information
  void display() {
    // Draw background for info panel
    fill(50, 50, 50, 150); // Semi-transparent background
    rect(10, 10, 200, 100);

    // Set text properties
    fill(255);
    textSize(12);

    // Display the score
    text("Score: " + score, 20, 30);

    // Display the health
    text("Health: " + health, 20, 50);


    // Display the timer
    text("Time: " + nf(timer, 0, 2), 140, 30); // Formatted to 2 decimal places

    //Display the ammo
    text("Ammo:" + ammo, 20, 60);

    //Display the brick
    text("Brick:" + brick, 20, 70);

    //Display the wood
    text("Wood:" + wood, 20, 80);

    //Display the metal
    text("Metal:" + metal, 20, 80);
  }
}
