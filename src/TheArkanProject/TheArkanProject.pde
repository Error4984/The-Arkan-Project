// The Arkan Project
//Henry Baldwin
InfoPanel panel;
ArrayList<Cloaker> cloakers = new ArrayList<Cloaker>();
ArrayList<Dasher> dashers = new ArrayList<Dasher>();
ArrayList<Healer> healers = new ArrayList<Healer>();
ArrayList<Heavy> heavys = new ArrayList<Heavy>();
ArrayList<Normal> normals = new ArrayList<Normal>();
ArrayList<Pouncer> pouncers = new ArrayList<Pouncer>();
ArrayList<Ranged> rangeds = new ArrayList<Ranged>();
ArrayList<Spawner> spawners = new ArrayList<Spawner>();
ArrayList<Tunneler> tunnelers = new ArrayList<Tunneler>();
Button[] buttons=new Button[5];

Player p1;
boolean play = false;
PImage start, startGIF, over;
Timer eTimer, wTimer;
int welcomeCounter;


void setup() {
  panel = new InfoPanel();
  size(1050, 750);
  background(0);
  start = loadImage("HenryStartArkan2.png");
  startGIF = loadImage("HenryArkanStartGIF.gif");
  over = loadImage("HenryArkanGameOver3.png");
  start.resize(width, height);
  over.resize(width, height);
  // buttons on start screen
  buttons[0] =new Button(width/6, 350, "START", 160, 70, #7ACB52, #4A7C32);
  buttons[1] =new Button(5*width/6, 350, "OPTIONS", 160, 70, #7ACB52, #4A7C32);
  buttons[2] =new Button(width/2, 350, "MENU", 160, 70, #D14E4E, #903434);
  //player
  p1 = new Player(0, 60, 'w');
  //spawn timer
  eTimer = new Timer(1000);
  eTimer.start();
  //welcome timer
  wTimer = new Timer(2000);
  wTimer.start();
  welcomeCounter=0;
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    background(255);

    p1.display();
    p1.move();

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
      if (p1.intersect(cloaker)) {
        p1.health-=10;
        cloakers.remove(i);
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
      if (p1.intersect(dasher)) {
        p1.health-=10;
        dashers.remove(i);
      }
      if (dasher.reachedBottom()) {
        dashers.remove(i);
      } else {
        dasher.display();
        dasher.move();
      }
    }

    for (int i = 0; i < healers.size(); i++) {
      Healer healer = healers.get(i);
      if (p1.intersect(healer)) {
        p1.health-=10;
        healers.remove(i);
      }
      if (healer.reachedBottom()) {
        healers.remove(i);
      } else {
        healer.display();
        healer.move();
      }
    }

    for (int i = 0; i < heavys.size(); i++) {
      Heavy heavy = heavys.get(i);
      if (p1.intersect(heavy)) {
        p1.health-=10;
        heavys.remove(i);
      }
      if (heavy.reachedBottom()) {
        heavys.remove(i);
      } else {
        heavy.display();
        heavy.move();
      }
    }
    for (int i = 0; i < normals.size(); i++) {
      Normal normal = normals.get(i);
      if (p1.intersect(normal)) {
        p1.health-=10;
        normals.remove(i);
      }
      if (normal.reachedBottom()) {
        normals.remove(i);
      } else {
        normal.display();
        normal.move();
      }
    }
    for (int i = 0; i < pouncers.size(); i++) {
      Pouncer pouncer = pouncers.get(i);
      if (p1.intersect(pouncer)) {
        p1.health-=10;
        pouncers.remove(i);
      }
      if (pouncer.reachedBottom()) {
        pouncers.remove(i);
      } else {
        pouncer.display();
        pouncer.move();
      }
    }
    for (int i = 0; i < rangeds.size(); i++) {
      Ranged ranged = rangeds.get(i);
      if (p1.intersect(ranged)) {
        p1.health-=10;
        rangeds.remove(i);
      }
      if (ranged.reachedBottom()) {
        rangeds.remove(i);
      } else {
        ranged.display();
        ranged.move();
      }
    }
    for (int i = 0; i < spawners.size(); i++) {
      Spawner spawner = spawners.get(i);
      if (p1.intersect(spawner)) {
        p1.health-=10;
        spawners.remove(i);
      }
      if (spawner.reachedBottom()) {
        spawners.remove(i);
      } else {
        spawner.display();
        spawner.move();
      }
    }
    for (int i = 0; i < tunnelers.size(); i++) {
      Tunneler tunneler = tunnelers.get(i);
      if (p1.intersect(tunneler)) {
        p1.health-=10;
        tunnelers.remove(i);
      }
      if (tunneler.reachedBottom()) {
        tunnelers.remove(i);
      } else {
        tunneler.display();
        tunneler.move();
      }
    }
    if (p1.dead()) {
      gameOver();
    }
    panel.display();
  }
}

void mousePressed() {
  if (play == false && !p1.dead() && welcomeCounter>2) {
    for (int i=0; i<buttons.length; i++) {
      if (buttons[0].on) {
        play = true;
      } else {
        play = false;
      }
    }
  }
  if (play == false && !p1.dead() && welcomeCounter<2) {
    welcomeCounter=1000;
    startMenu();
  }
}

void gameOver () {
  image(over, width/2, height/2);
  buttons[2].display();
  buttons[2].hover(mouseX, mouseY);
}

void startScreen () {
  if (wTimer.isFinished()) {
    wTimer.start();
    welcomeCounter++;
  }
  textAlign(CENTER);
  textSize(50);
  switch(welcomeCounter) {
  case 0:
    background(0);
    image(start, width/2, height/2);
  case 1:
    background(0);
    fill(255);
    text("We lost contact with our cargo jet", width/2, height/4*3);
    break;
  case 2:
    background(0);
    fill(255);
    text("Which is an unusual occurrence", width/2, height/4*3);
    break;
  case 3:
    background(0);
    fill(255);
    text("There's no reason it should have", width/2, height/4*3);
    break;
  case 4:
    background(0);
    fill(255);
    text("Due to a lack of life in the forest below", width/2, height/4*3);
    break;
  case 5:
    background(0);
    fill(255);
    text("And most of the surrounding terrain \n being uncharted", width/2, height/4*3);
    break;
  case 6:
    background(0);
    fill(255);
    text("We were going to investigate \n their last known location", width/2, height/4*3);
    break;
  case 7:
    background(0);
    fill(255);
    text("But all of a sudden", width/2, height/4*3);
    break;
  case 8:
    background(0);
    fill(255);
    text("We got attacked", width/2, height/4*3);
    break;
  case 9:
    background(0);
    fill(255);
    text("By what seemed to be a vine", width/2, height/4*3);
    break;
  case 10:
    background(0);
    fill(255);
    text("And the last thing I remember", width/2, height/4*3);
    break;
  case 11:
    background(0);
    fill(255);
    text("Was waking up here", width/2, height/4*3);
    break;
  default:
    startMenu();
    println("None");
    break;
  }

  if (welcomeCounter>11) {
    buttons[0].display();
    buttons[0].hover(mouseX, mouseY);
    buttons[1].display();
    buttons[1].hover(mouseX, mouseY);
  }
}

void startMenu() {
  imageMode(CENTER);
  image(start, width/2, height/2);
}
