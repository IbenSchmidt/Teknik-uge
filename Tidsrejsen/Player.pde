class Player extends GameObject {
  // PVector pos, size; lavet i collision
  PVector oldPos;
  PVector vel = new PVector(2, 0);
  PVector gravity = new PVector(0,0.1);
  PImage playerImage;
  int points;
  int hitBoxObjIdx; // Indekset hvor denne sprite ligger
  public boolean canJump=false, isJumping=false;

  Player (PVector pos_, PVector size_, String imageName_) {
    pos = pos_;
    size = size_;
    playerImage = loadImage(imageName_);

    super.init(pos, size, "player");
  }

  void customDraw() {
    // Tilføj tyngdekraft når man er over jorden      
    if (oldPos != pos) {
      // If collision
      if (collide(this, pos, size, "Player")) {
        pos = oldPos.copy(); 
      } else {
        oldPos = pos.copy();
      }
    }
    
    gravity_mechanics();
    
    // show image here
    image(playerImage, pos.x, pos.y);
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
    if (pos.y + size.y >= height-11) {
      vel.y=0;
      pos.y= (height-size.y-11);
      canJump=true;
      isJumping=false;
    }
  }

  void moveUp() {
    if (!isJumping) { //<>//
      vel.y=-6;
      canJump=false; //<>//
      isJumping=true;
      super.updateThis(pos);
    }
  }

  void moveDown() {
    pos.y += vel.y;
    super.updateThis(pos);
  }

  void moveLeft() {
    pos.x -= vel.x;
    super.updateThis(pos);
  }

  void moveRight() {
    pos.x += vel.x;
    super.updateThis(pos);
  }
}
