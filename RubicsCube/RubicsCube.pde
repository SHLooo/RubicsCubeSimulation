import peasy.*;
PeasyCam cam;

int dim = 3;
Cubie[] cube = new Cubie [dim*dim*dim];


Move move;
int move_dir = 0;
int move_x = 0;
int move_y = 0;
int move_z = 0;


void setup() {
  background(25);
  // size(600, 600, P3D);
  fullScreen(P3D);
  cam = new PeasyCam(this, 400);

  int index = 0;
  // USE A TRIPPLE LOOP TO struct THE CUBIE ON X, Y, Z AXIS
  // Note: it goes z axis first, and then is y axis, last one is x axis
  for (int x = -1; x <= 1; ++x) {
    for (int y = -1; y <= 1; ++y) {
      for (int z = -1; z <= 1; ++z) {
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x, y, z);
        cube[index] = new Cubie(matrix, x, y, z);
        index++;
      }
    }
  }
  sequence_generate();
  sequence_reverse();

  move = new Move(move_x, move_y, move_z, move_dir);
}


void draw() {
  background(25);

  // giving the cube an angle
  rotateX(-0.5);
  rotateY(0.3);
  rotateZ(0.05);

  numberShow();

  // run the shuffling functions
  shuffle();
  shuffle_ani();
  unshuffle();
  unshuffle_ani();

  move.update();

  // draw the cube
  scale(50);

  // change the color of the cube after each rotation, by check the x, y, z coordinate
  for (int i = 0; i < cube.length; ++i) {
    push();
    if (abs(cube[i].z) > 0 && cube[i].z == move.z) {
      rotateZ(move.angle);
    } else if (abs(cube[i].x) > 0 && cube[i].x == move.x) {
      rotateX(move.angle);
    } else if (abs(cube[i].y) > 0 && cube[i].y == move.y) {
      rotateY(-move.angle);
    }
    cube[i].show();
    pop();
  }
}
