Player p1;
Player p2;

Hunger hunger;

PImage startside;

void setup () {
  size(1396,786);
  frameRate(60);
  startside = loadImage("images/Startside.png");

  p1 = new Player(new PVector(50, 50), new PVector(50, 50), 0);
  p2 = new Player(new PVector(150, 150), new PVector(50, 50), 1);
  
  hunger = new Hunger(new PVector(250, 250), new PVector(50, 50), 2);
 
}

void draw () {
  background(startside);
  for (CollisionDetection obj : hitBoxObjects) {
    obj.customDraw();
  }
  controls();
}
