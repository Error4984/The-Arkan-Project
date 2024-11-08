
// The Arkan Project
//Henry Baldwin
InfoPanel panel;
Timer t1;






 Player[] players= new Player[1];
boolean play = false;
PImage start;
Timer eTimer;



void setup() {
  panel = new InfoPanel(100);
  size(1050, 750);
  background(255);
  start = loadImage("HenryArkanProjStart2.png");
  start.resize(width, height);
  //enemies

  //player
  players[0] = new Player(0, 60, 'w');
  //timer
  eTimer = new Timer(1000);
  eTimer.start();
}

void draw() {
  if (!play) {
    image(start, 0, 0);
  } else {


    background(255);





    players[0].display();
    players[0].move();
  }
  for (int i = 0; i < enemies.size(); i++) {
    Cloaker cloaker = cloakers.get(i);
    cloakers[0].display();
    cloakers[0].move();
    if (cloaker.reachedBottom()) {
      cloakers.remove(i);
    }
  }
  for (int i = 0; i < enemies.size(); i++) {
    Dasher dasher = dashers.get(i);
    dashers[0].display();
    dashers[0].move();
    if (dasher.reachedBottom()) {
      dashers.remove(i);
    }
  }
  for (int i = 0; i < enemies.size(); i++) {
    Healer healer = healers.get(i);
    healers[0].display();
    healers[0].move();
    if (healer.reachedBottom()) {
      healers.remove(i);
    }
  }
  for (int i = 0; i < enemies.size(); i++) {
    Heavy heavy = heavys.get(i);
    heavys[0].display();
    heavys[0].move();
    if (heavy.reachedBottom()) {
      heavys.remove(i);
    }
  }
  for (int i = 0; i < enemies.size(); i++) {
    Normal normal = normals.get(i);
    normals[0].display();
    normals[0].move();
    if (normal.reachedBottom()) {
      normals.remove(i);
    }
  }
  for (int i = 0; i < enemies.size(); i++) {
    Pouncer pouncer = pouncers.get(i);
    pouncers[0].display();
    pouncers[0].move();
    if (pouncer.reachedBottom()) {
      pouncers.remove(i);
    }
  }
  for (int i = 0; i < enemies.size(); i++) {
    Ranged ranged = rangeds.get(i);
    rangeds[0].display();
    rangeds[0].move();
    if (ranged.reachedBottom()) {
      rangeds.remove(i);
    }
  }
  for (int i = 0; i < enemies.size(); i++) {
    Spawner spawner = spawners.get(i);
    spawners[0].display();
    spawners[0].move();
    if (spawner.reachedBottom()) {
      spawners.remove(i);
    }
  }
  for (int i = 0; i < enemies.size(); i++) {
    Tunneler tunneler = tunnelers.get(i);
    tunnelers[0].display();
    tunnelers[0].move();
    if (tuneler.reachedBottom()) {
      tunnelers.remove(i);
    }
    panel.display();
  }
}
  void keyPressed() {
  }

  void start() {
  }

  void mousePressed() {
    play = true;
  }
