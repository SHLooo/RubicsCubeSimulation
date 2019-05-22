
Boolean textShow = true;

int counter = 0;

Boolean shuffleMode = true;
Boolean solveMode = false;
Boolean controlMode = false;


// it shows the number of move have been done besides the cube

void numberShow() {
  if (textShow) {

    println(123456789);
    fill(255);
    textSize(40);
    // show the number of shuffling has been done
    if (shuffleMode) {
      text(counter_shuffle, 150, 150);
    } 
    // show the number of solving has been done
    else if (solveMode) {
      text(counter_solve, 150, 150);
    }     
    // show the number of control(command) has been done
    else if (controlMode) {
      text(counter, 150, 150);
    }
  }
}

// 
void shuffleMode() {
  // set the display mode to be shuffleMode
  shuffleMode = true;
  solveMode = false;
  controlMode = false;
  // reset the counters in [Shuffle]
  counter_shuffle = 0;
  counter_solve = 0;
  // reset the control(command)counter
  counter = 0;
}

void solveMode() {
  // set the display mode to be solveMode
  shuffleMode = false;
  solveMode = true;
  controlMode = false; 
  // reset the counters in [Shuffle]
  counter_shuffle = 0;
  counter_solve = 0;
  // reset the control(command)counter
  counter = 0;
}

void controlMode() {
  // set the display mode to be controlMode
  shuffleMode = false;
  solveMode = false;
  // reset the counters in [Shuffle]
  counter_shuffle = 0;
  counter_solve = 0;
  // reset the control(command)counter
  controlMode = true;
}
