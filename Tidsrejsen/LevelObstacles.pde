/* Denne fil indeholder alle de forskellige og specifikke sprites for hvert level
 */


class LevelObstacle extends GameObject {
  int id;
  PVector pos, size;
  String imageName;
}

class Wall extends LevelObstacle {
  Wall (PVector pos_, PVector size_) {
    pos = pos_;
    size = size_;

    super.init(pos, size, "wall");
  }

  void customDraw() {
    rect(pos.x, pos.y, size.x, size.y);
  }
}

class Food extends LevelObstacle {
  Food (PVector pos_, PVector size_) {
    pos = pos_;
    size = size_;

    super.init(pos, size, "obstacle");
  }

  void customDraw() {
    // rect(pos.x, pos.y, size.x, size.y);
  }

  void function(Player otherObj) {
    println(random(1));

    // Tilføj fart i til spilleren
    otherObj.vel.add(new PVector(1, 1));

    // Fjern dette objekt fra spillet
    pos = new PVector(-100,-100);
    updateThis(new PVector(-100,-100));
  }
}

class Star extends LevelObstacle {
  Star (PVector pos_, PVector size_) {
    pos = pos_;
    size = size_;

    super.init(pos, size, "obstacle");
  }

  void customDraw() {
    // rect(pos.x, pos.y, size.x, size.y);
  }

  void function(Player otherObj) {
    println(random(1));

    otherObj.points += 1;

    // Næste bane
    next_level();
  }
}
