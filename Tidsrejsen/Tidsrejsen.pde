Player p1;
Player p2;

Button game_btn;

String page = "start"; 

PImage main_background;
PImage game_background;

int level = 2;

void setup () {
  size(1396, 786);
  frameRate(60);
  main_background = loadImage("images/Startside.png");
  game_background = loadImage("images/Bane1.png");
  
  next_level();
  
  // Food food = new Food(new PVector(250, height - 150), new PVector(50, 50));
  
  // Wall wall = new Wall(new PVector(550, height - 150), new PVector(70, 20));
  
  game_btn = new Button("game", new PVector(width/2, height/2 + 75), new PVector(176, 87));
}

void draw () {
  if (page == "start") {
    background(main_background);
    game_btn.update();
  } else if (page == "game") {
    background(game_background);

    for (GameObject obj : hitBoxObjects) {
      obj.customDraw();
    }
    
    controls();
    
    if (p1.isJumping) {
      p1.vel.y+=p1.gravity.y;
      p1.pos.y+=p1.vel.y;
    }

    if (p2.isJumping) {
      p2.vel.y+=p2.gravity.y;
      p2.pos.y+=p2.vel.y;
    }
  }
}

void next_level() {
  // Reset gameobjects
  hitBoxObjects = new ArrayList<GameObject>();
  
  level += 1;
  
  // Update background
  game_background = loadImage("images/Bane" + level + ".png");
  
  // Update player images
  p1 = new Player(new PVector(50, 150), new PVector(15, 44), "images/Man" + level + ".png");
  p2 = new Player(new PVector(150, 250), new PVector(15, 44), "images/Woman" + level + ".png");

  // Show level specific obstacles
  if (level == 2) {
    loadLevel2();
  } else if (level == 3) {
    loadLevel3();
  }
}
