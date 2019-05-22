
// Functionality:
// start shuffling the rubic's cube is <space> is pressed
// enable the key press function
void keyPressed() {

  applyMove_ani(key);
  // ---------------------------------------------------------------------------------

  if (key == ' ') {
    // reset();
  }

  // ---------------------------------------------------------------------------------

  if (key == 't') {
    textShow = !textShow;
  }

  // ---------------------------------------------------------------------------------

  // if pressing 's', start shuffling with animation
  else if (key == 's') {
    start_shuffle_ani = true;
    shuffleMode();
  } 
  // if pressing 'S', start shuffling without animation
  else if (key == 'S') {
    start_shuffle = true;
    shuffleMode();
  } 
  // if pressing 'n', solve the rubic's cube with animation
  else if (key == 'n') {
    start_solve_ani = true;
    solveMode();
  } 
  // if pressing 'N', reset the rubic's cube
  else if (key == 'N') {
    start_solve = true;
    solveMode();
  }

  // ---------------------------------------------------------------------------------

  // ***** when you face a surface
  // ***** lower case: positive direction (counter-clockwise **) 
  // ***** upper case: negative direction (clockwise **) 

  // front ------------------------------ 
  else if (key == 'f') {
    move.x = 0;
    move.y = 0;
    move.z = 1;
    move.dir = -1;
    move.animating = true;
    ++ counter;
    controlMode();
  } else if (key == 'F') {
    move.x = 0;
    move.y = 0;
    move.z = 1;
    move.dir = 1;
    move.animating = true;
    ++ counter;
    controlMode();
  } 
  // back ------------------------------
  else if (key == 'b') {
    move.x = 0;
    move.y = 0;
    move.z = -1;
    move.dir = 1;
    move.animating = true;
    ++ counter;
    controlMode();
  } else if (key == 'B') {
    move.x = 0;
    move.y = 0;
    move.z = -1;
    move.dir = -1;
    move.animating = true;
    ++ counter;
    controlMode();
  } 
  // left ------------------------------
  else if (key == 'l') {
    move.x = -1;
    move.y = 0;
    move.z = 0;
    move.dir = 1;
    move.animating = true;
    ++ counter;
    controlMode();
  } else if (key == 'L') {
    move.x = -1;
    move.y = 0;
    move.z = 0;
    move.dir = -1;
    move.animating = true;
    ++ counter;
    controlMode();
  } 
  // right ------------------------------
  else if (key == 'r') {
    move.x = 1;
    move.y = 0;
    move.z = 0;
    move.dir = -1;
    move.animating = true;
    ++ counter;
    controlMode();
  } else if (key == 'R') {
    move.x = 1;
    move.y = 0;
    move.z = 0;
    move.dir = 1;
    move.animating = true;
    ++ counter;
    controlMode();
  } 
  // up ------------------------------
  else if (key == 'u') {
    move.x = 0;
    move.y = -1;
    move.z = 0;
    move.dir = 1;
    move.animating = true;
    ++ counter;
    controlMode();
  } else if (key == 'U') {
    move.x = 0;
    move.y = -1;
    move.z = 0;
    move.dir = -1;
    move.animating = true;
    ++ counter;
    controlMode();
  }
  // down ------------------------------
  else if (key == 'd') {
    move.x = 0;
    move.y = 1;
    move.z = 0;
    move.dir = 1;
    move.animating = true;
    ++ counter;
    controlMode();
  } else if (key == 'D') {
    move.x = 0;
    move.y = 1;
    move.z = 0;
    move.dir = -1;
    move.animating = true;
    ++ counter;
    controlMode();
  }
}

// *************************************************************************************************************************************** 
// NEW FUNCTION
// *************************************************************************************************************************************** 

void applyMove(char single_move) {
  switch (single_move) {

    // ***** when you face a surface
    // ***** lower case: positive direction (counter-clockwise **) 
    // ***** upper case: negative direction (clockwise **) 

    // front ------------------------------ 
  case 'f':
    turnZ(1, -1);
    break;
  case 'F':
    turnZ(1, 1);
    break;
    // back ------------------------------
  case 'b':
    turnZ(-1, -1);
    break;
  case 'B':
    turnZ(-1, 1);
    break;
    // left ------------------------------
  case 'l':
    turnX(-1, 1);
    break;
  case 'L':
    turnX(-1, -1);
    break;
    // right ------------------------------
  case 'r':
    turnX(1, -1);
    break;
  case 'R':
    turnX(1, 1);
    break;
    // up ------------------------------
  case 'u':
    turnY(-1, 1);
    break;
  case 'U':
    turnY(-1, -1);
    break;
    // down ------------------------------
  case 'd':
    turnY(1, 1);
    break;
  case 'D':
    turnY(1, -1);
    break;
  }
}


// *************************************************************************************************************************************** 
// NEW FUNCTION
// *************************************************************************************************************************************** 

void applyMove_ani(char single_move) {

  // front ------------------------------ 
  if (single_move == 'f') {
    move.x = 0;
    move.y = 0;
    move.z = 1;
    move.dir = -1;
    move.animating = true;
  } else if (single_move == 'F') {
    move.x = 0;
    move.y = 0;
    move.z = 1;
    move.dir = 1;
    move.animating = true;
  } 
  // back ------------------------------
  else if (single_move == 'b') {
    move.x = 0;
    move.y = 0;
    move.z = -1;
    move.dir = 1;
    move.animating = true;
  } else if (single_move == 'B') {
    move.x = 0;
    move.y = 0;
    move.z = -1;
    move.dir = -1;
    move.animating = true;
  } 
  // left ------------------------------
  else if (single_move == 'l') {
    move.x = -1;
    move.y = 0;
    move.z = 0;
    move.dir = 1;
    move.animating = true;
  } else if (single_move == 'L') {
    move.x = -1;
    move.y = 0;
    move.z = 0;
    move.dir = -1;
    move.animating = true;
  } 
  // right ------------------------------
  else if (single_move == 'r') {
    move.x = 1;
    move.y = 0;
    move.z = 0;
    move.dir = -1;
    move.animating = true;
  } else if (single_move == 'R') {
    move.x = 1;
    move.y = 0;
    move.z = 0;
    move.dir = 1;
    move.animating = true;
  } 
  // up ------------------------------
  else if (single_move == 'u') {
    move.x = 0;
    move.y = -1;
    move.z = 0;
    move.dir = 1;
    move.animating = true;
  } else if (single_move == 'U') {
    move.x = 0;
    move.y = -1;
    move.z = 0;
    move.dir = -1;
    move.animating = true;
  }
  // down ------------------------------
  else if (single_move == 'd') {
    move.x = 0;
    move.y = 1;
    move.z = 0;
    move.dir = 1;
    move.animating = true;
  } else if (single_move == 'D') {
    move.x = 0;
    move.y = 1;
    move.z = 0;
    move.dir = -1;
    move.animating = true;
  }
}
