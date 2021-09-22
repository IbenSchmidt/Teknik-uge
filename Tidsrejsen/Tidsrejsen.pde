Player p1;
Player p2;

Hunger hunger;

PImage startside;

void setup () {
  size(1396,786);
  frameRate(60);
  startside = loadImage("images/Startside.png");

  p1 = new Player(new PVector(50, 50), new PVector(50, 50), 0);
  p2 = new Player(new PVector(250, 150), new PVector(50, 50), 1);
  
  hunger = new Hunger(new PVector(250, 250), new PVector(50, 50), 2);
  rectMode(CORNER);
  
  hitBoxObjects.add(p1);
  hitBoxObjects.add(p2);
  hitBoxObjects.add(hunger);
}

void draw () {
  background(startside);

   controls();
     for (CollisionDetection obj : hitBoxObjects) {
    obj.customDraw();
  }
}
