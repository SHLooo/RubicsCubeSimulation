
// *** Manual ***
// --------------------------------------------------------------------------------------------------

// Section #01 -- Variables

// In [Shuffle] section:
// int framerate_shuffle = 2;   *** Speed of shuffling without animation
// int framerate_shuffle_ani = 20;   *** Speed of shuffling with animation
// int framerate_solve_ani = 20;   *** Speed of solving with animation
// int moveTimes = 15;   *** Number of times the rubic's cube is shuffled

// In [Move] section:
// float rotate_speed = 0.125;   *** Speed of rotation(animation)

// --------------------------------------------------------------------------------------------------

// Section #02 -- Commands

// keypress 's', start shuffling the rubic's cube with animation
// keypress 'S', start shuffling the rubic's cube without animation
// keypress 'n', solve the rubic's cube with animation
// keypress 'N', reset the rubic's cube
// NOTE: if you press 's'/'S'/'n'/'N' while its shuffling or solving, the new command will overwrite the previous command,
//         which means the previous command will not be completed. It is very dangerous to do so, and it will mess up the program. 

// keypress 'l' : turn the left face(orange) counterclockwise
// keypress 'L' : turn the left face(orange) clockwise
// keypress 'r' : turn the right face(red) counterclockwise
// keypress 'R' : turn the right face(red) clockwise
// keypress 'u' : turn the up face(white) counterclockwise
// keypress 'U' : turn the up face(white) clockwise
// keypress 'd' : turn the down face(blue) counterclockwise
// keypress 'D' : turn the down face(blue) clockwise
// keypress 'f' : turn the front face(green) counterclockwise
// keypress 'F' : turn the front face(green) clockwise
// keypress 'b' : turn the back face(yellow) counterclockwise
// keypress 'B' : turn the back face(yellow) clockwise

// keypress 't' : show/unshow the number of moves(shuffle/solve/control) have been done

// --------------------------------------------------------------------------------------------------
