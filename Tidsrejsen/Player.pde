class Player extends GameObject {
  // PVector pos, size; lavet i collision
  PVector vel = new PVector(2, 0);
  PVector gravity = new PVector(0,0.1);
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

  void customDraw() {
    // Tilføj tyngdekraft når man er over jorden
    gravity_mechanics();
    
    rect(pos.x, pos.y, size.x, size.y);
    super.updateThis(pos);
  }
  
  void gravity_mechanics() {
    if (pos.y + size.y < height) {
      // Bevæg kun hvis man ikke rammer noget på vej ned
      PVector newPos = pos.copy();
      newPos.y += vel.y;
      boolean collision = collide(this, newPos, size, "Player");
      if (!collision) {
        vel.y+=gravity.y;
        pos.y+=vel.y;
        canJump=false;
      } else {
        canJump = true;
        isJumping = false;
      }
    }    

    // Tjekker hvis ryger ud for skærmen på y-aksen 
    if (pos.y + size.y >= height) {
      vel.y=0;
      pos.y= (height-size.y);
      canJump=true;
      isJumping=false;
    }    
  }

  void moveUp() {
    PVector newPos = pos.copy();
    ; //<>//
    newPos.y -= vel.y;
    if (collide(this, newPos, size, "player")) {
      do {
        newPos.y += vel.y;
      } while (collide(this, newPos, size, "player"));
    } else if (canJump) {
      vel.y=-6;
      canJump=false; //<>//
      isJumping=true;
      super.updateThis(pos); //<>//
    }
  } //<>//

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
