
int counter_shuffle = 0;
int counter_solve = 0;
Boolean start_shuffle = false;
Boolean start_shuffle_ani = false;
Boolean start_solve = false;
Boolean start_solve_ani = false;


// note: the larger framerate be, the slower it will get
int framerate_shuffle = 2;
int framerate_shuffle_ani = 15;
int framerate_solve_ani = 15;


// Use a randomly-generated sequence of moves to shuffle the rubic's cube without animations
void shuffle() {
  if (start_shuffle) {
    // control the speed of shuffling 
    if (frameCount % framerate_shuffle == 0) {
      if (counter_shuffle < sequence.length()) {
        char single_move = sequence.charAt(counter_shuffle);
        applyMove(single_move);
        ++counter_shuffle;
      }
      // after one round of shuffle, all data are reset, so it can be shuffled again
      if (counter_shuffle == sequence.length()) {
        start_shuffle = false;
      }
    }
  }
}



// Use a randomly-generated sequence of moves to shuffle the rubic's cube with animations(rotating)
void shuffle_ani() {
  if (start_shuffle_ani) {
    // control the speed of shuffule animation
    if (frameCount % framerate_shuffle_ani == 0) {
      if (counter_shuffle < sequence.length()) {
        char single_move = sequence.charAt(counter_shuffle);
        applyMove_ani(single_move);
        ++counter_shuffle;
      }
      // after one round of shuffle, all data are reset, so it can be shuffled again
      if (counter_shuffle == sequence.length()) {
        start_shuffle_ani = false;
      }
    }
  }
}


// Use the reverse sequence of the randomly-generated moves to unshuffle/solve/renew the rubic's cube without animations
void unshuffle() {
  if (start_solve) {
    for (; counter_solve < sequence_back.length(); ++counter_solve) {
      char single_move = sequence_back.charAt(counter_solve);
      applyMove(single_move);
    }
    // after one round of reverse-shuffle, all data are reset, so it can be reverse-shuffled again
    start_solve = false;
  }
}


// Use the reverse sequence of the randomly-generated moves to solve the rubic's cube with animations(rotating)
void unshuffle_ani() {
  if (start_solve_ani) {
    // control the speed of solving animation
    if (frameCount % framerate_solve_ani == 0) {
      if (counter_solve < sequence_back.length()) {
        char single_move = sequence_back.charAt(counter_solve);
        applyMove_ani(single_move);
        ++counter_solve;
      }
      // after one round of shuffle, all data are reset, so it can be shuffled again
      if (counter_solve == sequence_back.length()) {
        start_solve_ani = false;
      }
    }
  }
}
