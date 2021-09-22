class Player extends GameObject {
  // PVector pos, size; lavet i collision
  PVector vel = new PVector(2, 0);
  PVector gravity = new PVector(0,0.2);
  String imageName;
  int points;
  int hitBoxObjIdx; // Indekset hvor denne sprite ligger
  public boolean canJump=false, isJumping=false;
  

  Player (PVector pos_, PVector size_, int id_) {
    pos = pos_;
    size = size_;
    id = id_;

    super.init(id_, pos, size, "player");
  }

  void customDraw() { //<>// //<>//
    if(pos.y + size.y < height)
    {
      vel.y+=gravity.y;
      pos.y+=vel.y;
    //println(frameRate);
    canJump=false;
    }
    if(pos.y + size.y >= height){
      vel.x=2;
      vel.y=2;
      pos.y= (height-size.y);
      canJump=true;
      isJumping=false;
    }
    //println(pos.y + "  " + vel.y);
    rect(pos.x, pos.y, size.x, size.y);
  }

  void moveUp() {
    PVector newPos = pos.copy();; //<>//
    newPos.y -= vel.y;
    if (collide(this, newPos, size, "player")) {
      do {
        newPos.y += vel.y;
      } while (collide(this, newPos, size, "player"));
    } else if (canJump) {
      vel.y=-10;
      canJump=false; //<>//
      isJumping=true;
      super.updateThis(pos);
    }
  }

  void moveDown() {
    PVector newPos = pos.copy();
    newPos.y += vel.y;
    if (collide(this, newPos, size, "player")) {
      do {
        pos.y -= vel.y;
      } while (collide(this, newPos, size, "player"));
    } else {
      pos.y += vel.y;
      super.updateThis(pos);
    }
  }

  void moveLeft() {
    PVector newPos = pos;
    newPos.x -= vel.x;
    if (collide(this, newPos, size, "player")) {
      do {
        pos.x += vel.x;
      } while (collide(this, newPos, size, "player"));
    } else {
      pos.x -= vel.x;
      super.updateThis(pos);
    }
  }

  void moveRight() {
    PVector newPos = pos;
    newPos.x += vel.x;
    if (collide(this, newPos, size, "player")) {
      do {
        pos.x -= vel.x;
      } while (collide(this, newPos, size, "player"));
    } else {
      pos.x += vel.x;
      super.updateThis(pos);
    }
  }
}
