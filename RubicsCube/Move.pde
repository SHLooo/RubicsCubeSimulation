class Move {
  float angle = 0;
  int x = 0;
  int y = 0;
  int z = 0;
  int dir = 0;

  float rotate_speed = 0.15;
  Boolean animating = false;

  Move(int x, int y, int z, int dir) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.dir = dir;
  }

  //void start() {
  //  animating = true;
  //  println(100);
  //}

  void update() {
    if (animating) {
      angle += dir * rotate_speed;
      //println(dir);
      //println(rotate_speed);
      //println(angle);f
      if (abs(angle) > HALF_PI) {
        angle = 0;
        animating = false;
        //finished = true;
        if (abs(z) > 0) {
          turnZ(z, dir);
        } else if (abs(x) > 0) {
          turnX(x, dir);
        } else if (abs(y) > 0) {
          turnY(y, dir);
        }
      }
    }
  }
}
