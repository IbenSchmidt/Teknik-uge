class Player extends CollisionDetection {
  // PVector pos, size; lavet i collision
  PVector vel = new PVector(2, 10);
  PVector gravity = new PVector(0,0.1);
  String imageName;
  int points;
  int hitBoxObjIdx; // Indekset hvor denne sprite ligger
  public boolean canJump=false, test=false;

  Player (PVector pos_, PVector size_, int id_) {
    pos = pos_;
    size = size_;
    id = id_;

    Runnable customRunnable = new Runnable() { public void run() {}};
    super.init(id_, pos, size, "player", customRunnable);
  }

  void customDraw() { //<>//
    if(pos.y + size.y < height)
    {
      vel.y+=gravity.y;
      pos.y+=vel.y;
    //println(frameRate);
    //canJump=false;
    }
    if(pos.y + size.y >= height){
      vel.x=2;
      vel.y=2;
      pos.y= (height-size.y);
      canJump=true;
    }
    //println(pos.y + "  " + vel.y);
    rect(pos.x, pos.y, size.x, size.y);
  }

  void moveUp() {
    PVector newPos = pos.copy();
    newPos.y -= vel.y; //<>//
    if (collide(id, newPos, size, "player")) {
      do {
        newPos.y += vel.y;
      } while (collide(id, newPos, size, "player"));
    }
    
    if ( canJump == true) {
      pos.y -= vel.y+100; //<>//
      canJump=false;
    }
  }

  void moveDown() {
    PVector newPos = pos.copy();
    newPos.y += vel.y;
    if (collide(id, newPos, size, "player")) {
      do {
        pos.y -= vel.y;
      } while (collide(id, newPos, size, "player"));
    } else {
      pos.y += vel.y;
    }
  }

  void moveLeft() {
    PVector newPos = pos;
    newPos.x -= vel.x;
    if (collide(id, newPos, size, "player")) {
      do{
        pos.x += vel.x;
      } while (collide(id, newPos, size, "player"));
    } else {
      pos.x -= vel.x;
    }
  }

  void moveRight() {
    PVector newPos = pos;
    newPos.x += vel.x;
    if (collide(id, newPos, size, "player")) {
      do{
        pos.x -= vel.x;
      } while (collide(id, newPos, size, "player"));
    } else {
      pos.x += vel.x;
    }
  }
}
