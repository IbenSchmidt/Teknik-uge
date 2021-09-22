Player p1;
Player p2;
String page = "start";
PImage startside;
PImage womanFirstLevel;
PImage manFirstLevel;
PImage bane1;

void setup () {
  size(1396, 786);
  frameRate(60);
  bane1 = loadImage("images/Bane1.png");
  startside = loadImage("images/Startside.png");
  womanFirstLevel = loadImage("images/Womanfirstlevel.png");
  manFirstLevel = loadImage("images/Manfirstlevel.png");

  p1 = new Player(new PVector(50, 150), new PVector(30, 88), 0);
  p2 = new Player(new PVector(150, 250), new PVector(30, 88), 1);

  Food food = new Food(new PVector(250, height - 150), new PVector(50, 50), 2);;
  
  println(hitBoxObjects);
}

void draw () {
  if(page=="start"){
  background(startside);
  }
  if(page=="bane1"){
    background(bane1);
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
}
