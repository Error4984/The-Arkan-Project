// The Arkan Project
//Henry Baldwin

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



void setup() {
  size(500, 500);
  background(255);

  cloakers[0] = new Cloaker(0, 0);
  dashers[0] = new Dasher(60, 0);
  healers[0] = new Healer(120, 0);
  heavys[0] = new Heavy(180, 0);
  normals[0] = new Normal(240, 0);
  pouncers[0] = new Pouncer(300, 0);
  rangeds[0] = new Ranged(360, 0);
  spawners[0] = new Spawner(420, 0);
  tunnelers[0] = new Tunneler(0, 60);
  
  players[0] = new Player(0, 60, 'w');
}

void draw() {
  cloakers[0].display();
  dashers[0].display();
  healers[0].display();
  heavys[0].display();
  normals[0].display();
  pouncers[0].display();
  rangeds[0].display();
  spawners[0].display();
  tunnelers[0].display();
  players[0].display();
}

void keyPressed() {
}

void mousePressed() {
}
