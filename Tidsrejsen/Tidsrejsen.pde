Player p1;
Player p2;

void setup () {
  fullScreen();
  frameRate(60);

  p1 = new Player(new PVector(50, 50), new PVector(50, 50), 0);
  p2 = new Player(new PVector(50, 50), new PVector(50, 50), 1);
}

void draw () {
  background(255);
  controls();
  p1.update();
  p2.update();
}
