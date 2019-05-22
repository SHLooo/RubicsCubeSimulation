class Face {
  PVector normal;
  color c;

  Face(PVector normal, color c) {
    this.normal = normal;
    this.c = c;
  }

  void show() {
    pushMatrix();
    fill(c);
    noStroke();
    rectMode(CENTER);
    translate(0.5*normal.x, 0.5*normal.y, 0.5*normal.z);

    // If the position of "x" is 1 or -1, rotate along y-axis
    // If the position of "y" is 1 or -1, rotate along x-axis
    if (abs(normal.x) > 0) {
      rotateY(HALF_PI);
    } else if (abs(normal.y) > 0) {
      rotateX(HALF_PI);
    }

    square(0, 0, 1);
    popMatrix();
  }


  // Using matrix transformation to rotate and keep tracking the color of the faces
  void turnZ(float angle) {
    PVector v2 = new PVector();
    v2.x = round(normal.x * cos(angle) - normal.y * sin(angle));
    v2.y = round(normal.x * sin(angle) + normal.y * cos(angle));
    v2.z = round(normal.z);
    normal = v2;
  }

  void turnY(float angle) {
    PVector v2 = new PVector();
    v2.x = round(normal.x * cos(angle) - normal.z * sin(angle));
    v2.z = round(normal.x * sin(angle) + normal.z * cos(angle));
    v2.y = round(normal.y);
    normal = v2;
  }

  void turnX(float angle) {
    PVector v2 = new PVector();
    v2.y = round(normal.y * cos(angle) - normal.z * sin(angle));
    v2.z = round(normal.y * sin(angle) + normal.z * cos(angle));
    v2.x = round(normal.x);
    normal = v2;
  }
}
