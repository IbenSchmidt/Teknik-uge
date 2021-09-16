
ArrayList<HitBoxObject> hitBoxObjects = new ArrayList<HitBoxObject>();
class HitBoxObject {
  int id;
  float x1, x2, y1, y2;

  HitBoxObject (int id_, PVector pos_, PVector size_) {
    id = id_;
    x1 = pos_.x;
    x2 = pos_.x + size_.x;
    y1 = pos_.y;
    y2 = pos_.y + size_.y;
  }

  void update(PVector pos_, PVector size_) {
    x1 = pos_.x;
    x2 = pos_.x + size_.x;
    y1 = pos_.y;
    y2 = pos_.y + size_.y;
  }
}

class CollisionDetection {
  PVector pos, size;
  CollisionDetection () {
  }

  void updateHitBoxObjects(int id, PVector pos, PVector size) {
    hitBoxObjects.add(new HitBoxObject(id, pos, size));
  }

  boolean collide(int id, PVector pos, PVector size) {
    boolean xCollide = false;
    boolean yCollide = false;
    for (HitBoxObject obj : hitBoxObjects) {
      if (obj.id != id) {
        // Tjek om der er collision på x-aksen
        if (pos.x >= obj.x1 && pos.x <= obj.x2 || pos.x + size.x >= obj.x1 && pos.x + size.x <= obj.x2) {
          xCollide = true;
        }

        // Tjek om der er collision på y-aksen
        if (pos.y >= obj.y1 && pos.y <= obj.y2 || pos.y + size.y >= obj.y1 && pos.y + size.y <= obj.y2) {
          yCollide = true;
        }
      } else {
        obj.update(pos, size);
      }
    }
    return xCollide && yCollide;
  }
}
