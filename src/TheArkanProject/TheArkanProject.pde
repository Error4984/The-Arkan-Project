
// The Arkan Project
//Henry Baldwin
InfoPanel panel;
Timer t1


Cloaker[] cloakers = new Cloaker[1];
Dasher[] dashers = new Dasher[1];
Healer[] healers = new Healer[1];
Heavy[] heavys = new Heavy[1];
Normal[] normals = new Normal[1];
Pouncer[] pouncers = new Pouncer[1];
Ranged[] rangeds = new Ranged[1];
Spawner[] spawners = new Spawner[1];
Tunneler[] tunnelers = new Tunneler[1];

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
  cloakers[0] = new Cloaker(width/2, height/2);
  dashers[0] = new Dasher(width/2, height/2);
  healers[0] = new Healer(width/2, height/2);
  heavys[0] = new Heavy(width/2, height/2);
  normals[0] = new Normal(width/2, height/2);
  pouncers[0] = new Pouncer(width/2, height/2);
  rangeds[0] = new Ranged(width/2, height/2);
  spawners[0] = new Spawner(width/2, height/2);
  tunnelers[0] = new Tunneler(width/2, height/2);
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

    dashers[0].display();
    dashers[0].move();
    healers[0].display();
    healers[0].move();
    heavys[0].display();
    heavys[0].move();
    normals[0].display();
    normals[0].move();
    pouncers[0].display();
    pouncers[0].move();
    rangeds[0].display();
    rangeds[0].move();
    spawners[0].display();
    spawners[0].move();
    tunnelers[0].display();
    tunnelers[0].move();
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
  panel.display();
}

void keyPressed() {
}

void start() {
}

void mousePressed() {
  play = true;
}
