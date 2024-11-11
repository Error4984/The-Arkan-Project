// The Arkan Project
//Henry Baldwin
InfoPanel panel;
Timer t1;

ArrayList<Cloaker> cloakers = new ArrayList<Cloaker>();
ArrayList<Dasher> dashers = new ArrayList<Dasher>();
ArrayList<Healer> healers = new ArrayList<Healer>();
ArrayList<Heavy> heavys = new ArrayList<Heavy>();
ArrayList<Normal> normals = new ArrayList<Normal>();
ArrayList<Pouncer> pouncers = new ArrayList<Pouncer>();
ArrayList<Ranged> rangeds = new ArrayList<Ranged>();
ArrayList<Spawner> spawners = new ArrayList<Spawner>();
ArrayList<Tunneler> tunnelers = new ArrayList<Tunneler>();

Button[] buttons=new Button[4];
Player player;
boolean play = false;
PImage start;
Timer eTimer;



void setup() {
  panel = new InfoPanel();
  size(1050, 750);
  background(255);
  start = loadImage("HenryArkanProjStart2.png");
  start.resize(width, height);
  //start buttons
  buttons[0] =new Button(width/6, 350, "START", 160, 70);
  //player
  player = new Player(0, 60, 'w');
  //timer
  eTimer = new Timer(1000);
  eTimer.start();
}

void draw() {
  if (!play) {

    imageMode(CENTER);
    image(start, width/2, height/2);
    buttons[0].display();
    buttons[0].hover(mouseX, mouseY);
  } else {
    background(255);

    player.display();
    player.move();

    if (eTimer.isFinished()) {
      cloakers.add(new Cloaker());
      dashers.add(new Dasher());
      healers.add(new Healer());
      heavys.add(new Heavy());
      normals.add(new Normal());
      pouncers.add(new Pouncer());
      rangeds.add(new Ranged());
      spawners.add(new Spawner());
      tunnelers.add(new Tunneler());

      eTimer.start();
    }
    for (int i = 0; i < cloakers.size(); i++) {
      Cloaker cloaker = cloakers.get(i);
      if (player.intersect(cloaker)) {
        player.health=-10;
      }
      if (cloaker.reachedBottom()) {
        cloakers.remove(i);
      } else {
        cloaker.display();
        cloaker.move();
      }
    }
    for (int i = 0; i < dashers.size(); i++) {
      Dasher dasher = dashers.get(i);
      dasher.display();
      dasher.move();
      if (dasher.reachedBottom()) {
        dashers.remove(i);
      }
    }
    for (int i = 0; i < healers.size(); i++) {
      Healer healer = healers.get(i);
      healer.display();
      healer.move();
      if (healer.reachedBottom()) {
        healers.remove(i);
      }
    }
    for (int i = 0; i < heavys.size(); i++) {
      Heavy heavy = heavys.get(i);
      heavy.display();
      heavy.move();
      if (heavy.reachedBottom()) {
        heavys.remove(i);
      }
    }
    for (int i = 0; i < heavys.size(); i++) {
      Normal normal = normals.get(i);
      normal.display();
      normal.move();
      if (normal.reachedBottom()) {
        normals.remove(i);
      }
    }
    for (int i = 0; i < pouncers.size(); i++) {
      Pouncer pouncer = pouncers.get(i);
      pouncer.display();
      pouncer.move();
      if (pouncer.reachedBottom()) {
        pouncers.remove(i);
      }
    }
    for (int i = 0; i < rangeds.size(); i++) {
      Ranged ranged = rangeds.get(i);
      ranged.display();
      ranged.move();
      if (ranged.reachedBottom()) {
        rangeds.remove(i);
      }
    }
    for (int i = 0; i < spawners.size(); i++) {
      Spawner spawner = spawners.get(i);
      spawner.display();
      spawner.move();
      if (spawner.reachedBottom()) {
        spawners.remove(i);
      }
    }
    for (int i = 0; i < tunnelers.size(); i++) {
      Tunneler tunneler = tunnelers.get(i);
      tunneler.display();
      tunneler.move();
      if (tunneler.reachedBottom()) {
        tunnelers.remove(i);
      }
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
