/* Denne fil indeholder alle de forskellige og specifikke sprites for hvert level
 */
 
 
class LevelObstacle extends CollisionDetection{
  int id;
  PVector pos, size;
  String imageName;
}
 
class Hunger extends LevelObstacle {
  int hitBoxObjIdx;
  
  Hunger (PVector pos_, PVector size_, int id_) {
    id = id_;
    pos = pos_;
    size = size_;
    
    Runnable customRunnable = new Runnable() { public void run() {addSpeed();}};
    super.init(id_, pos, size, "obstacle", customRunnable);
  }
  
  void customDraw() {
    rect(pos.x, pos.y, size.x, size.y);
  }
  
  void addSpeed() {
    // Tilføj fart i til spilleren
    println(random(1));
    
    // Fjern dette objekt fra spillet
  }
}
