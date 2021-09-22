Player p1;
Player p2;

Food food;

PImage startside;

void setup () {
  size(1396, 786);
  frameRate(60);
  startside = loadImage("images/Startside.png");

  p1 = new Player(new PVector(50, 150), new PVector(50, 50), 0);
  p2 = new Player(new PVector(150, 250), new PVector(50, 50), 1);

  food = new Food(new PVector(250, 250), new PVector(50, 50), 2);
}

void draw () {
  background(startside);
  for (GameObject obj : hitBoxObjects) {
    obj.customDraw();
  }
  controls();
  if(p1.isJumping){
    p1.vel.y+=p1.gravity.y;
    p1.pos.y+=p1.vel.y;
  }
  if(p2.isJumping){
    p2.vel.y+=p2.gravity.y;
    p2.pos.y+=p2.vel.y;
  }
}
