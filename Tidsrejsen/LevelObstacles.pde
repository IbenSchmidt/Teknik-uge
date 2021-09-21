/* Denne fil indeholder alle de forskellige og specifikke sprites for hvert level
 */


class LevelObstacle extends GameObject {
  int id;
  PVector pos, size;
  String imageName;
}

class Food extends LevelObstacle {
  Food (PVector pos_, PVector size_, int id_) {
    id = id_;
    pos = pos_;
    size = size_;
    
    super.init(id_, pos, size, "obstacle");
  }

  void customDraw() {
    rect(pos.x, pos.y, size.x, size.y);
  }

  void addSpeed(Player otherObj) {
    // Tilføj fart i til spilleren
    otherObj.vel.add(new PVector(1, 1));

    // Fjern dette objekt fra spillet
    hitBoxObjects.remove(this);
  }
}
