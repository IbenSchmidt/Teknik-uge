Player p1;
Player p2;

PImage startside;

void setup () {
  size(1396, 786);
  frameRate(60);
  startside = loadImage("images/Startside.png");
  
  p1 = new Player(new PVector(50, 50), new PVector(50, 50), 0);
  p2 = new Player(new PVector(150, 50), new PVector(50, 50), 1);

  Food food = new Food(new PVector(250, 250), new PVector(50, 50), 2);;
}

void draw () {
  background(startside);
  for (GameObject obj : hitBoxObjects) {
    obj.customDraw();
  }
  controls();
}
