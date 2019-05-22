class Cubie {
  PMatrix3D mat;

  int x = 0;
  int y = 0;
  int z = 0;
  Face[] faces = new Face[6];

  Cubie(PMatrix3D m, int x, int y, int z) {
    mat = m;
    this.x = x;
    this.y = y;
    this.z = z;


    // yellow(behind)
    faces[0] = new Face(new PVector(0, 0, -1), color(255, 255, 0));
    // green(front)
    faces[1] = new Face(new PVector(0, 0, 1), color(0, 200, 0));
    // white(up)
    faces[4] = new Face(new PVector(0, -1, 0), color(255, 255, 255));
    // blue(down)
    faces[5] = new Face(new PVector(0, 1, 0), color(0, 0, 255));
    // orange(left)
    faces[2] = new Face(new PVector(-1, 0, 0), color(255, 165, 0));
    // red(right)
    faces[3] = new Face(new PVector(1, 0, 0), color(200, 0, 0));
  }

  void update(int x, int y, int z) {
    mat.reset();
    mat.translate(x, y, z);
    this.x = x;
    this.y = y;
    this.z = z;
  }

  void show() {
    noFill();    
    stroke(0);
    strokeWeight(0.1);
    pushMatrix();
    applyMatrix(mat);
    box(1);
    // using loop to show every faces
    for (Face f : faces) {
      f.show();
    }
    popMatrix();
  }


  void turnFacesX(int dirction) {
    for (Face f : faces) {
      f.turnX(dirction * HALF_PI);
    }
  }

  void turnFacesY(int dirction) {
    for (Face f : faces) {
      f.turnY(dirction * HALF_PI);
    }
  }

  void turnFacesZ(int dirction) {
    for (Face f : faces) {
      f.turnZ(dirction * HALF_PI);
    }
  }
}
